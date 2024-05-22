
func findMissingLetter(from string: String) -> Character? {
    var alphabetDictionary = [Character: Int]()

    // Populate the dictionary with letters from 'a' to 'z'
    for (index, letter) in "abcdefghijklmnopqrstuvwxyz".enumerated() {
        alphabetDictionary[letter] = index + 1 // Index starts from 1
    }
    
    for char in string {
        if alphabetDictionary[char] != nil {
            alphabetDictionary.removeValue(forKey: char)
        }
    }
    return alphabetDictionary.keys.first
}

let missing = findMissingLetter(from: "abcdefghijklmnopqrstuvwxy")
print(missing)
