import UIKit

// check if an array has duplicates
func bruteApproach(list: [Int]) -> Bool {
    var steps = 0
    for i in list.indices {
        for j in list.indices {
            steps += 1
            if i != j, list[i] == list [j] {
                print("bruteApproach steps", steps)
                return true
            }
        }
    }
    print("bruteApproach steps", steps)
    return false
}

// time complexity: O(n*n)
bruteApproach(list: [1, 23, 4, 7, 2, 1])
bruteApproach(list: [1, 23, 4, 7, 2, 10])


// linear approach with the same problem
func linearApproach(list: [Int]) -> Bool {
    var indexAgainstNumber: [Int: Int] = [:]
    var steps = 0
    for i in list.indices {
        steps += 1
        if indexAgainstNumber[list[i]] == nil {
            indexAgainstNumber[list[i]] = 1
        } else {
            print("linearApproach steps", steps)
            return true
        }
    }
    print("linearApproach steps", steps)
    return false
}

// time complexity: O(n)
linearApproach(list: [1, 23, 4, 7, 2, 1])
linearApproach(list: [1, 23, 4, 7, 2, 10])
