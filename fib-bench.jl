using Lazy
using BenchmarkTools

fibs = @lazy 0:1:(fibs + drop(1, fibs));

println(@benchmark take(20,fibs))
#println(take(20, fibs))
