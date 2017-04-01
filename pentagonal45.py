triangular = [ n * (n + 1) / 2 for n in range(100000)]
pentagonal = [ n * (3 * n - 1) / 2 for n in range(100000)]
hexagonal = [ n * (2 * n - 1) for n in range(100000)]

#step = [list(filter(lambda x: x in triangular, sublist)) for sublist in pentagonal]
#final = [list(filter(lambda x: x in triangular, sublist)) for sublist in pentagonal]

final = set(triangular).intersection(pentagonal).intersection(hexagonal)

print(final)
