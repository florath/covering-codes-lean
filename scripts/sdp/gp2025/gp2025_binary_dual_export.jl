#!/usr/bin/env julia

# Export dual candidates for the binary SDP from Gijswijt--Polak 2025.
#
# This script follows the public Julia implementation referenced by the paper,
# but records every scalar and PSD constraint under a stable name.  Its output is
# numerical data only: it is meant to seed rational reconstruction and Lean
# certificate generation, not to be trusted as a proof.
#
# Upstream reference: https://github.com/CoveringCodes/Julia
# Authors: Dion Gijswijt and Sven Polak.
# License for the upstream Julia code: MIT.  See LICENSE-MIT-JULIA in this
# directory; this Julia script is not covered by the repository's BSD license.

using JuMP
using SDPAFamily
using LinearAlgebra
using Combinatorics

setprecision(512)

function json_escape(s)
    out = IOBuffer()
    for c in s
        if c == '"'
            print(out, "\\\"")
        elseif c == '\\'
            print(out, "\\\\")
        elseif c == '\n'
            print(out, "\\n")
        elseif c == '\r'
            print(out, "\\r")
        elseif c == '\t'
            print(out, "\\t")
        else
            print(out, c)
        end
    end
    return String(take!(out))
end

function write_json(io, value)
    if value === nothing
        print(io, "null")
    elseif value isa Bool
        print(io, value ? "true" : "false")
    elseif value isa AbstractString
        print(io, "\"", json_escape(value), "\"")
    elseif value isa Symbol
        write_json(io, String(value))
    elseif value isa Integer
        print(io, value)
    elseif value isa BigFloat
        write_json(io, string(value))
    elseif value isa AbstractFloat
        write_json(io, string(BigFloat(value)))
    elseif value isa AbstractMatrix
        print(io, "[")
        for i in axes(value, 1)
            if i != first(axes(value, 1))
                print(io, ",")
            end
            print(io, "[")
            for j in axes(value, 2)
                if j != first(axes(value, 2))
                    print(io, ",")
                end
                write_json(io, value[i, j])
            end
            print(io, "]")
        end
        print(io, "]")
    elseif value isa AbstractVector || value isa Tuple
        print(io, "[")
        first_item = true
        for item in value
            if !first_item
                print(io, ",")
            end
            first_item = false
            write_json(io, item)
        end
        print(io, "]")
    elseif value isa Dict
        print(io, "{")
        first_item = true
        for key in sort(collect(keys(value)); by = string)
            if !first_item
                print(io, ",")
            end
            first_item = false
            write_json(io, string(key))
            print(io, ":")
            write_json(io, value[key])
        end
        print(io, "}")
    elseif value isa NamedTuple
        write_json(io, Dict(string(k) => v for (k, v) in pairs(value)))
    else
        write_json(io, string(value))
    end
end

function decimalize(value)
    if value === nothing
        return nothing
    elseif value isa Number
        return string(BigFloat(value))
    elseif value isa AbstractMatrix
        return [[decimalize(value[i, j]) for j in axes(value, 2)] for i in axes(value, 1)]
    elseif value isa AbstractVector
        return [decimalize(x) for x in value]
    else
        return string(value)
    end
end

function safe_dual(ref)
    try
        return Dict("ok" => true, "value" => decimalize(dual(ref)))
    catch err
        return Dict("ok" => false, "error" => sprint(showerror, err))
    end
end

function affine_export(expr, variables)
    aff = expr + zero(BigFloat)
    coeffs = Any[]
    for id in eachindex(variables)
        coeff = JuMP.coefficient(aff, variables[id])
        if !iszero(coeff)
            push!(coeffs, [id, string(coeff)])
        end
    end
    return Dict("const" => string(JuMP.constant(aff)), "coeffs" => coeffs)
end

function matrix_affine_export(matrix_expr, variables)
    return [
        [affine_export(matrix_expr[i, j], variables) for j in axes(matrix_expr, 2)]
        for i in axes(matrix_expr, 1)
    ]
end

function determine_orbit_numbers(n)
    orbit_numbers = Dict{Vector{Int}, Int}()
    orbit_number = 0

    function number_orbit(i, j, t)
        for tprime in 0:n, iprime in 0:n, jprime in 0:n
            quad = [n - iprime - jprime + tprime, jprime - tprime, iprime - tprime, tprime]
            if n >= quad[1] >= 0 &&
                    n >= quad[2] >= 0 &&
                    n >= quad[3] >= 0 &&
                    sort([i, j, i + j - 2 * t]) == sort([iprime, jprime, iprime + jprime - 2 * tprime])
                orbit_numbers[quad] = orbit_number
            end
        end
    end

    for i in 0:n
        key = [n - i, 0, i, 0]
        if !haskey(orbit_numbers, key)
            orbit_number += 1
            number_orbit(i, 0, 0)
        end
    end

    for t in 0:n, i in 0:n, j in 0:n
        key = [n - i - j + t, j - t, i - t, t]
        if n >= key[1] >= 0 &&
                n >= key[2] >= 0 &&
                n >= key[3] >= 0 &&
                !haskey(orbit_numbers, key)
            orbit_number += 1
            number_orbit(i, j, t)
        end
    end

    return orbit_numbers, orbit_number
end

function determine_full_orbit_numbers(n)
    orbit_numbers = Dict{Vector{Int}, Int}()
    orbit_number = 0

    for t in 0:n, i in 0:n, j in 0:n
        key = [n - i - j + t, j - t, i - t, t]
        if n >= key[1] >= 0 &&
                n >= key[2] >= 0 &&
                n >= key[3] >= 0
            orbit_number += 1
            orbit_numbers[key] = orbit_number
        end
    end

    return orbit_numbers, orbit_number
end

function beta(n, t, i, j, k)
    return sum([
        (-1)^(u - t) *
        binomial(big(u), t) *
        binomial(big(n - 2 * k), u - k) *
        binomial(big(n - k - u), i - u) *
        binomial(big(n - k - u), j - u)
        for u in 0:n
    ])
end

function make_distr(n, i, j, t, lambda)
    ti = i - t
    tj = j - t
    rest = n + t - i - j
    coef = Dict{Tuple{Int, Int}, BigInt}()

    for a in 0:ti, b in 0:tj, c in 0:t, d in 0:rest
        j2 = a + b + c + d
        t2 = a + c
        dist = a + d + j - b - c
        key = (j2, t2)
        value = lambda[dist + 1] *
            binomial(big(ti), a) *
            binomial(big(tj), b) *
            binomial(big(t), c) *
            binomial(big(rest), d)
        coef[key] = get(coef, key, big(0)) + value
    end

    return coef
end

function determine_block_indices(n, k, d = 0)
    index_set = Int[]
    for r in k:(n - k)
        if (n - r) == 0 || (n - r) >= d
            push!(index_set, r)
        end
    end
    return index_set, length(index_set)
end

function paper_inequality(n, r, repeat)
    lambda = zeros(BigInt, n + 1)
    beta_value = big(0)
    max_nonzero = 0
    name = ""

    if repeat == 1
        name = "sphere"
        for d in 0:r
            lambda[d + 1] = big(1)
        end
        beta_value = big(1)
        max_nonzero = r
    elseif repeat == 2
        name = "van_wee"
        van_wee_scale = cld(n + 1, r + 1)
        for d in 0:(r - 1)
            lambda[d + 1] = big(van_wee_scale)
        end
        lambda[r + 1] = big(1)
        lambda[r + 2] = big(1)
        beta_value = big(van_wee_scale)
        max_nonzero = r + 1
    else
        error("unknown paper inequality slot: $repeat")
    end

    return name, lambda, beta_value, max_nonzero
end

function add_scalar_ge!(model, records, expr, kind, meta)
    ref = @constraint(model, expr >= 0)
    push!(records, Dict("kind" => kind, "meta" => meta, "ref" => ref, "expr" => expr))
    return ref
end

function add_psd!(model, records, matrix_expr, kind, meta)
    ref = @constraint(model, matrix_expr >= 0, PSDCone())
    push!(records,
        Dict("kind" => kind, "meta" => meta, "ref" => ref, "matrix_expr" => matrix_expr))
    return ref
end

function public_record(record; solved, include_expressions = false, variables = nothing)
    out = Dict("kind" => record["kind"], "meta" => record["meta"])
    if include_expressions
        if variables === nothing
            error("variables are required when include_expressions=true")
        end
        if haskey(record, "expr")
            out["expr"] = affine_export(record["expr"], variables)
        elseif haskey(record, "matrix_expr")
            out["matrix_expr"] = matrix_affine_export(record["matrix_expr"], variables)
        end
    end
    if solved
        out["dual"] = safe_dual(record["ref"])
    end
    return out
end

function orbit_records(orbit_numbers)
    pairs = collect(orbit_numbers)
    sort!(pairs; by = p -> (p[2], p[1][1], p[1][2], p[1][3], p[1][4]))
    return [
        Dict(
            "id" => id,
            "quad" => quad,
            "i" => quad[3] + quad[4],
            "j" => quad[2] + quad[4],
            "t" => quad[4],
            "distance" => quad[2] + quad[3],
        )
        for (quad, id) in pairs
    ]
end

function objective_records(n, orbit_numbers)
    terms = Dict{Int, BigInt}()
    for i2 in 0:n, i3 in 0:(n - i2), i4 in 0:(n - i2 - i3)
        coeff = multinomial(big(i2), big(i3), big(i4), big(n - i2 - i3 - i4))
        id = orbit_numbers[[n - i2 - i3 - i4, i2, i3, i4]]
        terms[id] = get(terms, id, big(0)) + coeff
    end
    return [
        Dict("orbit_id" => id, "coeff" => string(coeff))
        for (id, coeff) in sort(collect(terms); by = p -> p[1])
    ]
end

function build_binary_model(n, r;
        solve = true, silent = false, max_iteration = 600, include_expressions = false,
        full_variables = false, symmetry_constraints = false, variant = :sdpa_gmp)
    orbit_numbers, nvars =
        full_variables ? determine_full_orbit_numbers(n) : determine_orbit_numbers(n)
    quotient_orbit_numbers, _ = determine_orbit_numbers(n)
    variable_mode = full_variables ? "full" : "quotient"

    function orbit_id(i, j, t)
        return orbit_numbers[[n - i - j + t, j - t, i - t, t]]
    end

    function zero_id(d)
        return orbit_id(d, 0, 0)
    end

    function diagonal_id(d)
        return orbit_id(d, d, d)
    end

    solver_params = if variant == :sdpa_gmp
        (
            lambdaStar = 1e10,
            epsilonStar = 1e-20,
            betaStar = 0.2,
            betaBar = 0.4,
            gammaStar = 0.6,
            epsilonDash = 1e-20,
            upperBound = 1e17,
            lowerBound = -1e17,
            maxIteration = max_iteration,
            precision = 512,
        )
    else
        (
            lambdaStar = 1e10,
            epsilonStar = 1e-20,
            betaStar = 0.2,
            betaBar = 0.4,
            gammaStar = 0.6,
            epsilonDash = 1e-20,
            upperBound = 1e17,
            lowerBound = -1e17,
            maxIteration = max_iteration,
        )
    end

    opt = SDPAFamily.Optimizer(
        variant = variant,
        verbose = silent ? SDPAFamily.SILENT : SDPAFamily.VERBOSE,
        presolve = true,
        silent = silent,
        params = solver_params,
    )

    model = GenericModel{BigFloat}()
    set_optimizer(model, () -> opt)
    @variable(model, y[1:nvars])

    scalar_records = Any[]
    psd_records = Any[]

    for id in 1:nvars
        add_scalar_ge!(model, scalar_records, y[id], "nonnegative_variable",
            Dict("orbit_id" => id))
    end

    if full_variables && symmetry_constraints
        canonical_by_quotient = Dict{Int, Int}()
        for (quad, id) in orbit_numbers
            quotient_id = quotient_orbit_numbers[quad]
            if !haskey(canonical_by_quotient, quotient_id) ||
                    id < canonical_by_quotient[quotient_id]
                canonical_by_quotient[quotient_id] = id
            end
        end
        full_orbits = Dict(
            id => (
                i = quad[3] + quad[4],
                j = quad[2] + quad[4],
                t = quad[4],
            )
            for (quad, id) in orbit_numbers
        )
        for (quad, id) in sort(collect(orbit_numbers); by = p -> p[2])
            canonical_id = canonical_by_quotient[quotient_orbit_numbers[quad]]
            if id != canonical_id
                source = full_orbits[id]
                target = full_orbits[canonical_id]
                meta = Dict(
                    "orbit_id" => id,
                    "canonical_orbit_id" => canonical_id,
                    "i" => source.i,
                    "j" => source.j,
                    "t" => source.t,
                    "canonical_i" => target.i,
                    "canonical_j" => target.j,
                    "canonical_t" => target.t,
                )
                add_scalar_ge!(model, scalar_records, y[canonical_id] - y[id],
                    "symmetry_le", meta)
                add_scalar_ge!(model, scalar_records, y[id] - y[canonical_id],
                    "symmetry_ge", meta)
            end
        end
    end

    objective_poly = 0
    for i2 in 0:n, i3 in 0:(n - i2), i4 in 0:(n - i2 - i3)
        objective_poly += multinomial(big(i2), big(i3), big(i4), big(n - i2 - i3 - i4)) *
            y[orbit_numbers[[n - i2 - i3 - i4, i2, i3, i4]]]
    end
    @objective(model, Min, objective_poly)

    println("Generating semidefinite constraints...")
    for k in 0:Int(floor(n / 2))
        index_set, block_size = determine_block_indices(n, k)
        if block_size > 0
            matrix_expr = zeros(GenericAffExpr{BigFloat, GenericVariableRef{BigFloat}},
                block_size, block_size)
            for row_index in 1:block_size
                for column_index in 1:block_size
                    r1 = index_set[row_index]
                    r2 = index_set[column_index]
                    i = n - r1
                    j = n - r2
                    for t in 0:n
                        i1 = n - j - i + t
                        i2 = j - t
                        i3 = i - t
                        i4 = t
                        if i1 >= 0 && i2 >= 0 && i3 >= 0 && i4 >= 0
                            matrix_expr[row_index, column_index] +=
                                y[orbit_id(i, j, t)] * beta(n, t, i, j, k)
                        end
                    end
                end
            end
            add_psd!(model, psd_records, matrix_expr, "primal_block",
                Dict("k" => k, "index_set" => index_set, "bordered" => false))
        end
    end

    for k in 0:Int(floor(n / 2))
        index_set, block_size = determine_block_indices(n, k)
        if block_size > 0
            add_value = k == 0 ? 1 : 0
            matrix_expr = zeros(GenericAffExpr{BigFloat, GenericVariableRef{BigFloat}},
                block_size + add_value, block_size + add_value)
            for row_index in 1:block_size
                r1 = index_set[row_index]
                i = n - r1
                for column_index in 1:block_size
                    r2 = index_set[column_index]
                    j = n - r2
                    for t in 0:n
                        i1 = n - j - i + t
                        i2 = j - t
                        i3 = i - t
                        i4 = t
                        if i1 >= 0 && i2 >= 0 && i3 >= 0 && i4 >= 0
                            matrix_expr[row_index + add_value, column_index + add_value] +=
                                (y[zero_id(i + j - 2 * t)] -
                                 y[orbit_id(i, j, t)]) *
                                beta(n, t, i, j, k)
                        end
                    end
                end
                if k == 0
                    matrix_expr[1, row_index + add_value] =
                        binomial(big(n), i) *
                        (y[zero_id(0)] -
                         y[zero_id(i)])
                    matrix_expr[row_index + add_value, 1] =
                        matrix_expr[1, row_index + add_value]
                end
            end
            if k == 0
                matrix_expr[1, 1] = 1 - y[zero_id(0)]
            end
            add_psd!(model, psd_records, matrix_expr, "complement_block",
                Dict("k" => k, "index_set" => index_set, "bordered" => k == 0))
        end
    end

    println("Generating Lasserre constraints...")
    for repeat in 1:2
        ineq_name, lambda, beta_eq, max_nonzero = paper_inequality(n, r, repeat)
        for k in 0:Int(floor(n / 2))
            index_set, block_size = determine_block_indices(n, k)
            if block_size > 0
                add_value = k == 0 ? 1 : 0
                matrix_expr = zeros(GenericAffExpr{BigFloat, GenericVariableRef{BigFloat}},
                    block_size + add_value, block_size + add_value)
                for row_index in 1:block_size
                    r1 = index_set[row_index]
                    i = n - r1
                    for column_index in 1:block_size
                        r2 = index_set[column_index]
                        j = n - r2
                        for t in 0:n
                            i1 = n - j - i + t
                            i2 = j - t
                            i3 = i - t
                            i4 = t
                            if i1 >= 0 && i2 >= 0 && i3 >= 0 && i4 >= 0
                                for supp in 0:max_nonzero
                                    compositions = map(
                                        a -> [sum(a .== m) for m in 1:4],
                                        with_replacement_combinations(1:4, supp),
                                    )
                                    for eta in compositions
                                        if eta[1] <= i1 && eta[2] <= i2 && eta[3] <= i3 && eta[4] <= i4
                                            i1p = i1 - eta[1] + eta[4]
                                            i2p = i2 - eta[2] + eta[3]
                                            i3p = i3 - eta[3] + eta[2]
                                            i4p = i4 - eta[4] + eta[1]
                                            matrix_expr[row_index + add_value, column_index + add_value] +=
                                                lambda[supp + 1] *
                                                y[orbit_numbers[[i1p, i2p, i3p, i4p]]] *
                                                beta(n, t, i, j, k) *
                                                binomial(big(i1), eta[1]) *
                                                binomial(big(i2), eta[2]) *
                                                binomial(big(i3), eta[3]) *
                                                binomial(big(i4), eta[4])
                                        end
                                    end
                                end
                                matrix_expr[row_index + add_value, column_index + add_value] -=
                                    beta_eq *
                                    y[zero_id(i + j - 2 * t)] *
                                    beta(n, t, i, j, k)
                            end
                        end
                    end
                    if k == 0
                        i1 = n - i
                        i2 = i
                        if i1 >= 0 && i2 >= 0
                            for supp in 0:max_nonzero
                                compositions = map(
                                    a -> [sum(a .== m) for m in 1:2],
                                    with_replacement_combinations(1:2, supp),
                                )
                                for eta in compositions
                                    if eta[1] <= i1 && eta[2] <= i2
                                        i1p = i1 - eta[1] + eta[2]
                                        i2p = i2 - eta[2] + eta[1]
                                        matrix_expr[row_index + add_value, 1] +=
                                            lambda[supp + 1] *
                                            y[diagonal_id(i + eta[1] - eta[2])] *
                                            binomial(big(i1), eta[1]) *
                                            binomial(big(i2), eta[2]) *
                                            binomial(big(n), i2)
                                    end
                                end
                            end
                            matrix_expr[row_index + add_value, 1] -=
                                beta_eq * y[zero_id(0)] * binomial(big(n), i2)
                            matrix_expr[1, row_index + add_value] =
                                matrix_expr[row_index + add_value, 1]
                        end
                    end
                end
                if k == 0
                    matrix_expr[1, 1] =
                        sum([binomial(big(n), ww) * lambda[ww + 1] for ww in 0:max_nonzero]) *
                        y[zero_id(0)] - beta_eq
                end
                add_psd!(model, psd_records, matrix_expr, "lasserre_block",
                    Dict("inequality" => ineq_name, "k" => k,
                        "index_set" => index_set, "bordered" => k == 0))
            end
        end
    end

    println("Generating linear inequalities...")
    for t in 0:n, ti in 0:(n - t), tj in 0:(n - t - ti)
        j = t + tj
        i = t + ti

        orbit_ijt = orbit_numbers[[n - ti - tj - t, tj, ti, t]]
        orbit_i00 = zero_id(i)
        orbit_diagonal = diagonal_id(i)
        orbit_000 = zero_id(0)
        h = i + j - 2 * t
        orbit_h00 = zero_id(h)
        meta = Dict("i" => i, "j" => j, "t" => t, "orbit_id" => orbit_ijt)

        add_scalar_ge!(model, scalar_records, y[orbit_diagonal] - y[orbit_ijt],
            "basic_diagonal_upper", meta)
        add_scalar_ge!(model, scalar_records, y[orbit_ijt] - y[orbit_i00] - y[orbit_h00] + y[orbit_000],
            "basic_triangle_lower", meta)
        add_scalar_ge!(model, scalar_records, y[orbit_h00] - y[orbit_ijt],
            "basic_distance_upper", meta)
    end

    for repeat in 1:2
        ineq_name, lambda, beta_eq, _ = paper_inequality(n, r, repeat)
        for t in 0:n, ti in 0:(n - t), tj in 0:(n - t - ti)
            j = t + tj
            i = t + ti
            coef = make_distr(n, i, j, t, lambda)
            orbit_i00 = zero_id(i)
            orbit_000 = zero_id(0)

            lin1 = big(0)
            lin2 = big(0)
            lin3 = big(0)
            lin4 = big(0)

            for t2 in 0:min(n, i), tj2 in 0:(n - i)
                j2 = t2 + tj2
                h = i + j2 - 2 * t2

                orbit_ij2t2 = orbit_numbers[[n - (j2 - t2) - (i - t2) - t2, j2 - t2, i - t2, t2]]
                orbit_j200 = zero_id(j2)
                orbit_h00 = zero_id(h)
                coeff = coef[(j2, t2)]

                lin1 += coeff * y[orbit_ij2t2]

                lin2 -= coeff * y[orbit_ij2t2]
                lin2 += coeff * y[orbit_j200]

                lin3 -= coeff * y[orbit_ij2t2]
                lin3 += coeff * y[orbit_h00]

                lin4 += coeff * y[orbit_ij2t2]
                lin4 -= coeff * y[orbit_h00]
                lin4 += coeff * y[orbit_000]
                lin4 -= coeff * y[orbit_j200]
            end

            lin1 -= beta_eq * y[orbit_i00]

            lin2 += beta_eq * y[orbit_i00]
            lin2 -= beta_eq * y[orbit_000]

            lin3 += beta_eq * y[orbit_i00]
            lin3 -= beta_eq * y[orbit_000]

            lin4 -= beta_eq
            lin4 += 2 * beta_eq * y[orbit_000]
            lin4 -= beta_eq * y[orbit_i00]

            meta = Dict("inequality" => ineq_name, "i" => i, "j" => j, "t" => t)
            add_scalar_ge!(model, scalar_records, lin1, "matrix_cut_1", meta)
            add_scalar_ge!(model, scalar_records, lin2, "matrix_cut_2", meta)
            add_scalar_ge!(model, scalar_records, lin3, "matrix_cut_3", meta)
            add_scalar_ge!(model, scalar_records, lin4, "matrix_cut_4", meta)
        end
    end

    solved = false
    if solve
        println("Starting SDP solver...")
        println("recall (n,r) = ($n, $r)")
        @time optimize!(model)
        solved = true
        println("scaled objective value: ", (objective_value(model) * big(2)^n)^(1 // 3))
    end

    result = Dict(
        "format" => "gp2025-binary-dual-candidate-v1",
        "n" => n,
        "r" => r,
        "precision_bits" => precision(BigFloat),
        "solver_variant" => string(variant),
        "variable_mode" => variable_mode,
        "symmetry_constraints" => full_variables && symmetry_constraints,
        "variable_count" => nvars,
        "quotient_variable_count" => nvars,
        "orbit_map" => orbit_records(orbit_numbers),
        "objective_terms" => objective_records(n, orbit_numbers),
        "constraint_counts" => Dict(
            "scalar" => length(scalar_records),
            "psd" => length(psd_records),
        ),
        "scalar_constraints" => [
            public_record(record; solved = solved, include_expressions = include_expressions,
                variables = y)
            for record in scalar_records
        ],
        "psd_constraints" => [
            public_record(record; solved = solved, include_expressions = include_expressions,
                variables = y)
            for record in psd_records
        ],
    )

    if solved
        result["termination_status"] = string(termination_status(model))
        result["primal_status"] = string(primal_status(model))
        result["dual_status"] = string(dual_status(model))
        result["raw_objective"] = string(objective_value(model))
        result["lean_objective_bound"] = string(objective_value(model) * big(2)^n)
        result["scaled_objective"] = string((objective_value(model) * big(2)^n)^(1 // 3))
        result["primal_values"] = [string(value(y[id])) for id in 1:nvars]
    end

    return result
end

function usage()
    println(stderr,
        "usage: julia scripts/sdp/gp2025/gp2025_binary_dual_export.jl <n> <r> <output.json> " *
        "[--no-solve] [--silent] [--max-iteration=N] [--include-expressions] " *
        "[--full-variables] [--symmetry-constraints] " *
        "[--variant=sdpa_gmp|sdpa_qd|sdpa_dd|sdpa]")
end

function option_value(name, default)
    prefix = name * "="
    for arg in ARGS
        if startswith(arg, prefix)
            return arg[(lastindex(prefix) + 1):end]
        end
    end
    return default
end

function main()
    if length(ARGS) < 3
        usage()
        exit(2)
    end

    n = parse(Int, ARGS[1])
    r = parse(Int, ARGS[2])
    output_path = ARGS[3]
    solve = !("--no-solve" in ARGS)
    silent = "--silent" in ARGS
    max_iteration = parse(Int, option_value("--max-iteration", "600"))
    include_expressions = "--include-expressions" in ARGS
    full_variables = "--full-variables" in ARGS
    symmetry_constraints = "--symmetry-constraints" in ARGS
    variant = Symbol(option_value("--variant", "sdpa_gmp"))

    result = build_binary_model(n, r; solve = solve, silent = silent,
        max_iteration = max_iteration, include_expressions = include_expressions,
        full_variables = full_variables, symmetry_constraints = symmetry_constraints,
        variant = variant)
    open(output_path, "w") do io
        write_json(io, result)
        println(io)
    end
    println("Wrote ", output_path)
end

main()
