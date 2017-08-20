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


def foo(x):
    print "executing foo(%s)" % (x)


class ATest(object):
    def foo(self, x):
        print "executing foo(%s,%s)" % (self, x)

    @classmethod
    def class_foo(cls, x):
        print "executing class_foo(%s,%s)" % (cls, x)

    @staticmethod
    def static_foo(x):
        print "executing static_foo(%s)" % x

aTest = ATest()
aString = 'abc'
print aTest.foo(aString)
print aTest.class_foo(aString)
print aTest.static_foo(aString)


class Person:
    name = "aaa"


p1 = Person()
p2 = Person()
p1.name = "bbb"
print p1.name  # bbb
print p2.name  # aaa
print Person.name  # aaa


class Person1:
    name = []


p1 = Person1()
p2 = Person1()
p1.name.append(1)
print p1.name  # [1]
print p2.name  # [1]
print Person1.name  # [1]

print "hello man %s" %('snow')


def printEverything(*args):
    for count, thing in enumerate(args):
        print '{0} {1}' .format(count, thing)

printEverything('apple', 'banana', 'orange')

def table_things(**kwargs):
    for name, value in kwargs.items():
        print '{0} = {1}'.format(name, value)
table_things(apple = 'fruit', cabbage = 'vegetable')