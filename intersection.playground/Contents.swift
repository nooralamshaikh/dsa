import UIKit


func intersectionArray(arr1:[Int], arr2:[Int]) -> [Int] {
    var dict = [Int: Int]()
    var intersection = [Int]()
    for i in arr1 {
        dict[i] = 1
    }
    for i in arr2 {
        if dict[i] != nil {
            intersection.append(i)
        }
    }
    print(intersection)
    return intersection
}

intersectionArray(arr1: [1,2,3,4,5], arr2: [0,2,4,6,8])
intersectionArray(arr1: [1,2,3,4], arr2: [0,2,4,6,8])
intersectionArray(arr1: [0,2,4,6,8], arr2: [0,2,4,6])
intersectionArray(arr1: [0,2,4,6], arr2: [0,2,4,6,8])
