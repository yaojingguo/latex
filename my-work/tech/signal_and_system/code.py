def g(n):
    if n == 0 or n == 1:
        return 1
    g[n] = g[n-1] - g[n-2]

count = 20
print("n:    ", end="")
for i in range(count):
    print("{:3}".format(i), end="")
print()

g = [1, 1]
for i in range(2, count):
    g.append(g[i-1] - g[i-2])
print("g[n]: ", end="")
for i in range(count):
    print("{:3}".format(g[i]), end="")
print()
