using OSQP
using Test, SparseArrays, LinearAlgebra
using Random: seed!

tests = [
    "basic.jl",
    "dual_infeasibility.jl",
    "feasibility.jl",
    "non_convex.jl",
    "polishing.jl",
    "primal_infeasibility.jl",
    "unconstrained.jl",
    "warm_start.jl",
    "update_matrices.jl",
    "MPB_wrapper.jl",
    "MOI_wrapper.jl"
    ]

println("Running tests:")

for curtest in tests
    println(" Test: $(curtest)")
    include(curtest)
end
