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

enum LinterError: Error {
    case doesNotHaveOpeningBrace
    case mismatchedOpeningBrace
    case doesNotHaveClosingBrace
}
class Linter {
    private var stack: Stack<Character>

    init() {
        self.stack = Stack()
    }

    func lint(expression: String) throws -> Bool {
        while stack.read() != nil {
            stack.pop()
        }
        let braceMap: [Character: Character] = ["{" : "}", "[": "]", "(" : ")"]
        for c in expression {
            if braceMap.keys.contains(c) {
                stack.push(c)
            } else if braceMap.values.contains(c) {
                if stack.read() == nil {
                    print(c)
                    throw LinterError.doesNotHaveOpeningBrace
                } else {
                    if let popped = stack.pop(), braceMap[popped] != c {
                        throw LinterError.mismatchedOpeningBrace
                    }
                }
            }
        }
        if stack.read() != nil {
            throw LinterError.doesNotHaveClosingBrace
        }
        return true
    }
}

let linter = Linter()
let result = try linter.lint(expression: "(var a =;)[")
print(result)
