func printEveryOtherNumber(low: Int, high: Int) {
    if low > high {
        return
    } else {
        print(low)
        printEveryOtherNumber(low: low + 2, high: high)
    }
}

printEveryOtherNumber(low: 0, high: 10)
