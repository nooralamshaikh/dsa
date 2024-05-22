
func findDuplicate(array: [Int]) -> Int? {
    var dict = [Int: Bool]()
    for i in array {
        if dict[i] == nil {
            dict[i] = true
        } else {
            return i
        }
    }
    return nil
}

let duplicate = findDuplicate(array: [1, 2, 2, 3])
print(duplicate)
