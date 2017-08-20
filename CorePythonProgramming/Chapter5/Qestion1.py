# mutable strings, tuples,
a = 1
def fun(a):
    a = 2
fun(a)
print a  # 1

# immutable list dict

a = []
def fun(a):
    a.append(1)
fun(a)
print a  # [1]

print a