import UIKit


func insertionSort(list: inout [Int]) {
    for index in 1..<list.count {
        let temp = list[index]
        var position = index - 1
        while position >= 0 {
            if list[position] > temp {
                list[position + 1] = list[position]
                position -= 1
            } else {
                break
            }
            list[position + 1] = temp
        }
    }
}

var array = [4, 2, 7, 1, 3]
insertionSort(list: &array)
print(array)
