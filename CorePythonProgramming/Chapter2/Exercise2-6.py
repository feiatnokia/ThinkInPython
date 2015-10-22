__author__ = 'f2gao'
import os
import sys

# print abs(4)
# print abs(-4)
# myString = 'Hello World!'
# print myString
#
# file = open('D:\\userdata\\f2gao\\PycharmProjects\\ThinkInPython\\CorePythonProgramming\\temp.txt', 'a')
# #r for read, w for write, a for append
# print >> file, "Invalid input"
# file.closed

# username = raw_input('Please enter your user name : \n')
# print "User name is %s , and age is %d" %(username, 1)

# aList = ['a', 'b', 'c', 'd']
# aList[0] = 'b'
# print aList[1], aList[2], aList[3]
# a = 'a'
# aTuple = (a, 'b', 'c', 'd')
# # aTuple[0] = 'b'
# print aTuple[:3], aList[:3]
# print aTuple[2:-1], aList[2:-1]

# counter = 3
# while counter:
#     print counter
#     counter -= 1

# for i in range(1, 10, 2):
#     print i


# try:
#     fileHandle = open('a.txt', 'r')
#     print fileHandle.read()
#
# except IOError, e:
#     print 'can not open file', e

# def add(a, b):
#     return a + b
# print add(3, 4)

# class FirstClass(object):
#     '''
#     My first class
#     '''
#
#     version = 1.0
#     def __init__(self):
#         self.name = 'testClass'
#
#     def showName(self):
#         print "My name is ", self.name
#         print "Your name is ", self.__class__.__name__
#
# fc = FirstClass()
# print fc.showName()

# try:
#     a = int(raw_input("enter the value\n"))
#     print a
# except ValueError, e:
#     print e

# need to check every number if is integer or not
# inputNumber = raw_input("Enter file number : \n")
# numList = []
# for item in inputNumber.split():
#     numList.append(item)
#
# sumNumber = 0.0
# for number in range(len(numList)):
#     sumNumber += int(numList[number])
#
# print sumNumber
# evarage = sumNumber/len(numList)
# print evarage