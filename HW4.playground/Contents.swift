import UIKit
//MARK: - HW4
/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam = "Girls"
var resultsOfGames: [String: [String]] = [
    "Brooklyn Nets": ["99:89", "109:99"],
    "Dallas Mavericks": ["87:93", "104:97"],
    "Washington Wizards": ["117:112", "107:122"]
]

for (teamName, results) in resultsOfGames {
    for result in results {
        print("\(myTeam) against \(teamName) scored \(result).")
    }
}

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

var arr = [5, 10, 20, 50, 100, 200, 500]

func calculateCash(wallet: [Int]) -> Int {
    var sum = 0
    for money in wallet {
        sum += money
    }
    return sum
}
var totalCash = calculateCash(wallet: arr)
print("Total amount of cash in the wallet is \(totalCash) euros.")

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

func isEvenNumber(number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
    }
}

isEvenNumber(number: 41)

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from start: Int, to end: Int) -> [Int] {
    var arr = [Int]()
    for number in start...end {
        arr.append(number)
    }
    return arr
}

var newArr = createArray(from: 1, to: 10)
print(newArr)

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

// ----------------- Method #1 -----------------
var oddArr = [Int]()
for number in newArr {
    if isEvenNumber(number: number) {
        continue
    } else {
        oddArr.append(number)
    }
}
print(oddArr)

// ----------------- Method #2 -----------------
for number in newArr {
    if let i = newArr.firstIndex(of: number) {
        if isEvenNumber(number: number) {
            newArr.remove(at: i)
        }
    }
}
print(newArr)
