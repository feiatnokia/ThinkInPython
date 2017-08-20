# string var can't be changed
a = 1
def fun(a):
    a = 2
fun(a)
print a  # 1

# the list can be changed

a = []
def fun(a):
    a.append(1)
fun(a)
print a  # [1]