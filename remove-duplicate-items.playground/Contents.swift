import UIKit

func removeDuplicateItems(list: [Int]) -> [Int] {
    var dict: [Int: Int] = [:]
    var array: [Int] = []
    for i in list.indices {
        if dict[list[i]] == nil {
            dict[list[i]] = list[i]
            array.append(list[i])
        }
    }
    return array
}

var items = [1, 2, 54, 2, 7, 3, 1]
var result = removeDuplicateItems(list: items)
print(result)
