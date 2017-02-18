triangular = [ div(n * (n + 1), 2) for n in 1:100000 ]
pentagonal = [ div(n * (3n - 1),  2) for n in 1:100000 ]
hexagonal = [ n * (2n - 1) for n in 1:100000 ]

final = intersect(triangular, pentagonal, hexagonal)

println(final)
