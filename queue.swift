
public class Queue<T> {
    var queue: [T]
    init() {
        self.queue = []
    }

    func enqueue(_ element: T) {
        queue.append(element)
    }

    func dequeue() -> T? {
        queue.removeFirst()
    }

    func read() -> T? {
        queue.first
    }
}

class PrintManager {
    let queue = Queue<String>()

    func printQueueJob(_ document: String) {
        queue.enqueue(document)
    }

    func run() {
        while queue.read() != nil {
            printDocument(queue.dequeue())
        }
    }

    private func printDocument(_ doc: String?) {
        print("Printing document:", doc)
    }
}

let pm = PrintManager()
pm.printQueueJob("Some doc 1")
pm.printQueueJob("Some doc 2")
pm.printQueueJob("Imp")

pm.run()
