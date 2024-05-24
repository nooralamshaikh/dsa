
public class Stack<T> {
    private var stack: [T]
    init() {
        self.stack = []
    }

    func push(_ element: T) {
        stack.append(element)
    }

    func pop() -> T? {
        stack.removeLast()
    }

    func read() -> T? {
        stack.last
    }
}

func reverseString(_ string: String) -> String {
    let stack = Stack<Character>()
    for i in string {
        stack.push(i)
    }
    var newString = String()
    while stack.read() != nil {
        newString.append(stack.pop()!)
    }
    return newString
}

print(reverseString("ABCD"))
