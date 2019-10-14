import UIKit

// Uncomment the "assert" lines for each problem when you have a solution, and run the playground to test.  When you have uncommented out the assert lines, no error messages or print statements means that your code is working correctly.

// Question One

// Create a new array numbersWithNoDuplicates that has all of the elements from numbers without any duplicates.  It should be in the same order as the original.

let numbers = [1,1,2,4,4,4,6,6,7,8]

var numbersWithNoDuplicates = [Int]()
var numbersSet = [Int](Set(numbers))

for (_,num) in numbers.enumerated() {
    if !numbersWithNoDuplicates.contains(num) {
        numbersWithNoDuplicates.append(num)
    }
}
print(numbersWithNoDuplicates)
  

assert(numbersWithNoDuplicates == [1,2,4,6,7,8], "Was expecting [1,2,4,6,7,8], but got \(numbersWithNoDuplicates)")

// Questions Two

// Create a new array scoresThatAppearOnce that has all the elements from scores that appear exactly once.  It should be in the same order as the original.

let scores = [1, 77, 83, 32, 77, 77, 83, 32, 99]

var scoresThatAppearOnce = [Int]()

var visitedScores: Set<Int> = []
for (_,score) in scores.enumerated() {
  if !visitedScores.contains(score) {
    visitedScores.insert(score)
    scoresThatAppearOnce.append(score)
  } else {
    if let foundIndex = scoresThatAppearOnce.firstIndex(of: score) {
      scoresThatAppearOnce.remove(at: foundIndex)
    }
  }
}
scoresThatAppearOnce = scoresThatAppearOnce.sorted()
assert(scoresThatAppearOnce == [1, 99], "Was expecting [1, 99], but got \(scoresThatAppearOnce)")

// Question Three

// a.

// Given arrOne and arrTwo, create a variable arrThree which is equal to the UNION of arrOne and arrTwo.  It should not contain any duplicate elements.  Sort arrThree from smallest to greatest.

let arrOne = [1,2,3,4,5]
let arrTwo = [3,4,5,6,7]

var arrThree: [Int] = []


for (_,num) in arrOne.enumerated() {
    if !arrThree.contains(num) {
    arrThree.append(num)
    }
}
for (_,num) in arrTwo.enumerated() {
    if !arrThree.contains(num) {
        arrThree.append(num)
    }
}
print(arrThree)
arrThree = arrThree.sorted()
assert(arrThree == [1,2,3,4,5,6,7], "Was expecting [1,2,3,4,5,6,7], but got \(arrThree)")

// b.

// Given arrFour and arrFive, create a variable arrSix with is equal to the INTERSECTION of arrFour and arrFive.  If should not contain any duplicate elements.  Sort arrSix from smallest to greatest.

let arrFour = [1,2,3,4,5]
let arrFive = [3,4,5,6,7]


var arrSix: [Int] = []
var arrayFour = Set<Int> (arrFour)
var arrayFive = Set<Int> (arrFive)
var intersectingArray = arrayFour.intersection(arrayFive)
arrSix = intersectingArray.sorted()


assert(arrSix == [3,4,5], "Was expecting [3,4,5], but got \(arrSix)")

// Question Four

// Given the 4 arrays of Ints below, create a new array, sorted in ascending order, that contains all the values without duplicates.

let numsOne = [2, 4, 5, 6, 8, 10, 12]
let numsTwo = [1, 2, 3, 4, 5, 6]
let numsThree = [5, 6, 7, 8, 9, 10, 11, 12]
let numsFour = [1, 3, 4, 5, 6, 7, 9]

var allNumsWithNoDuplicates: [Int] = []
var allNums = [Int]()
for num in numsOne {
    if !allNums.contains(num) {
        allNums.append(num)
    }
}
for num in numsTwo {
    if !allNums.contains(num) {
        allNums.append(num)
    }
}
for num in numsThree{
    if !allNums.contains(num) {
        allNums.append(num)
    }
}
for num in numsFour {
    if !allNums.contains(num) {
        allNums.append(num)
    }
}

allNumsWithNoDuplicates = allNums.sorted()

assert(allNumsWithNoDuplicates == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "Was expecting [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], but got \([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])")


// Question Five

// Determine if a String is a pangram. A pangram is a string that contains every letter of the alphabet at least once.

// e.g "The quick brown fox jumps over the lazy dog" is a pangram e.g "The quick brown fox jumped over the lazy dog" is NOT a pangram

let strOne = "The quick brown fox jumps over the lazy dog"
let strTwo = "The quick brown fox jumped over the lazy dog"
let strThree = "Sphinx of black quartz, judge my vow"

var strOneIsPangram: Bool = false
var strTwoIsPangram: Bool = false
var strThreeIsPangram: Bool = false

let alphabets: Set<Character> = Set("abcdefghijklmnopqrstuvwxyz")

var trimmedStr = ""
for char in strOne.lowercased() {
    if alphabets.contains(char) {
        trimmedStr += String(char)
}
}

for char in strTwo.lowercased() {
    if alphabets.contains(char) {
        trimmedStr += String(char)
}
}

for char in strThree.lowercased() {
    if alphabets.contains(char) {
        trimmedStr += String(char)
}
}

strOneIsPangram = Set(trimmedStr) == alphabets


assert(strOneIsPangram == true, "Was expecting true, but got \(strOneIsPangram)")
assert(strTwoIsPangram == false, "Was expecting false, but got \(strTwoIsPangram)")
assert(strThreeIsPangram == true, "Was expecting false, but got \(strThreeIsPangram)")









