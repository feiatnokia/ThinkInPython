
aList = ['aa', 'cc', 'dd', 'aa', 'a', 'ee', 'dd']
aList2 = list(set(aList))
print aList2

l1 = ['b','c','d','b','c','a','a']
l2 = {}.fromkeys(l1).keys()
print l2

l1 = ['b','c','d','b','c','a','a']
l2 = []
# [l2.append(i) for i in l1 if not i in l2]
[l2.append(i) for i in l1 if i not in l2]
print l2