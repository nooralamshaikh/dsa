
func nonDuplicatedCharInString(_ str: String) -> Character? {
    var dictionary = [Character: Int]()
    for c in str {
        dictionary[c, default: 0] += 1
    }
    for c in str {
        if dictionary[c] == 1 {
            return c
        }
    }
    return nil
}

print(nonDuplicatedCharInString("minimum"))
