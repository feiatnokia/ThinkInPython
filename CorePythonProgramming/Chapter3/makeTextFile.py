__author__ = 'f2gao'

import os

ls = os.linesep
print ls
fname = ''
while True:
    fname = raw_input("enter the file name : \n")
    if os.path.exists(fname):
        print '%s already exists' % fname
    else:
        break


all = []
while True:
    line = raw_input('enter the context: \n')
    if line == '.':
        break
    else:
        all.append(line)


fileHandle = open(fname, 'a')
for entry in all:
    fileHandle.writelines(entry + ls)

fileHandle.closed

