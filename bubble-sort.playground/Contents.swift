import UIKit

func bubbleSort(list: inout [Int]) {
    var unsortedUntilIndex = list.count - 1
    var sorted = false

    while !sorted {
        sorted = true
        for i in 0..<unsortedUntilIndex {
            if list[i] > list [i+1] {
                sorted = false
                list.swapAt(i, i+1)
            }
        }
        unsortedUntilIndex -= 1
    }
}
var list = [5, 2, 25, 75, 232, 65, 2, 23, 45, -21]
bubbleSort(list: &list)

print(list)

