import UIKit

func selectionSort(list: inout [Int]){
    for i in list.indices {
        var leastValueIndex = i
        let nextIndex = i + 1
        for j in nextIndex..<list.count {
            if list[j] < list[leastValueIndex] {
                leastValueIndex = j
            }
        }
        if leastValueIndex != i {
            let temp = list[i]
            list[i] = list[leastValueIndex]
            list[leastValueIndex] = temp
        }
    }
}

var list = [1, 91, 23, 12, 7, 8]
selectionSort(list: &list)
print(list)
