//
//  main.swift
//  DataStructures
//
//  Created by MUHAMMAD SALIH on 26/02/26.
//

import Foundation

print("---DATA STRUCTURES AND ALOGRITHMS IN SWIFT---")

let fruits = ["Apple","Banana","Strawberrry","Avocado","Grapes","Pineapple"]
let biscuts = ["Parle-G","Tiger","Britania","Oreo","Happy Happy"]

//O(n)
print("---O(n)---")
findAvocado(fruits)

//O(1)
print("---O(1)---")

logFirstFruit(fruits)
logTwoFruits(fruits)

//O(n^2)
print("---O(n^2)---")
arrayNestedElement(fruits, biscuts)

//Problem 1
print("---Problem 1---")
//false check
let myArray = checkIdenticalPresent(["a","b","c","d"],["x","y","z"])
print(myArray)
//true check
let myArray2 = checkIdenticalPresent(["a","b","c","d"], ["x","a","z"])
print(myArray2)

//problem2
print("---Problem 2---")
let hasPairSum = hasPairWithSum([1,6,8,9,12,5,7], 12)
print(hasPairSum)

let hasPairSum1 = hasPairWithSum([1,6,8,9,12,5,18], 12)
print(hasPairSum1)

let arr1 = [1,2,3,4,5]
let int1 = 7
let hasPairSum2 = hasPairWithSum(arr1, int1)
print(hasPairSum2)

//Array Operations
print("---Array Operations---")
arrayOperations()

//Data Structure using Array
arrayAcations()


//reverse a String
print("---Reverese A String---")
let revString = "Hello, Salih"
//reverseAString(revString)
//revAString(revString)
print(revString)

//Merge Sorted Array
let merged = mergeSortedArray([1,3,5,7], [2,4,6,8])
print(merged)

//Data structure using Linked list
linkedListOps()
let linkedList = LinkedList()
linkedList.append("Apple")
linkedList.append("Banana")
linkedList.prepend("Grape")
linkedList.insert(2, "Orange")
print("\(linkedList.remove(2)) is removed")
print(linkedList)

//Stack implement using Linkedlist
let stack = Stack()
stack.push("Ant")
stack.push("Bird")
stack.push("Cat")
print(stack)
stack.push("Dog")
print(stack)
print(stack.pop())
print(stack.pop())
print(stack.pop())
print(stack.pop())
print(stack.pop())
stack.push("Ant")
print(stack)

let stackArray = StackArray()
stackArray.push("Apple")
stackArray.push("Orange")
stackArray.push("Avacado")
stackArray.push("Abeiu")
print(stackArray.pop())
print(stackArray.pop())

//Algorithms
var algo = AlAlgorithms()
let factorial = algo.getFactorial(5)
print(factorial)

print("nth item of Fibanocci")
print(algo.fibanocii(6))

print("Fibonocci Series")
algo.getFibnociiSeries(10)

let str = "Salih"
var characters = Array(str)
algo.reverseString(&characters)

print(algo.quickSort([1,7,9,5,6,2,4]))
var arr = [1,7,9,5,6,2,4]

print("Bubble Sort : " , bubleSort(&arr))

print("Selection Sort : " , selectionSort(&arr))

let mergeAlgo = MergeSort.init()
let sortedArray = mergeAlgo.mergeSort([90,2,5,7,89,45,20, 50,1])
print("Merge sort: ", sortedArray)

let freqChar = getMaxFreqChater("aabbccbbaww")
print("most frequent char \(freqChar)")

//StringPuzzles
print(isAPalindrome("malayalam"))
print(isAPalindrome("abcdcdaa"))

let firstRepeatChar = getFirstRepeatedChar("abcdecd")
print("First Repeat char: \(firstRepeatChar)")

//Array Puzzles
let duplicates = getDuplicates([1,6,5, 5, 5, 5, 7, 8, 2, 3, 9])
print(duplicates)

let mostOccuring = getMostFrequentOccuring([1,6,5, 5, 5, 5, 7, 8, 2, 3, 9])
print("most occuring value: \(mostOccuring)")

let result = getNumberPairs([12, 1, 2, 5, 7, 9, 10], 19)
print(result)

let array = getConsecutiveNumberPairs([1,2,4,5,6,8,9,10, 12])
print(array)

let intersection = getIntersectionOfTwoArrays([1,6,5, 5, 5, 5, 7, 8, 2, 3, 9], [3,4,7,5,8,5,9,3])
print(intersection)
let intersectionh = getIntersectionByHashing([1,6,5, 5, 5, 5, 7, 8, 2, 3, 9], [3,4,7,5,8,5,9,3])
print(intersectionh)

//Compare Two Struct is copare by Hashable

let person1 = Person(id: 1, name: "Albin", address: "Calicut")
let person2 = Person(id: 2, name: "Anu", address: "Calicut")
let person3 = Person(id: 1, name: "Albin", address: "Calicut")

print(isSamePerson(person1, person2))
print(isSamePerson(person1, person3))

print("Helo world")
