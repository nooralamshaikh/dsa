
func countdown(n: Int) {
    print(n)
    if n == 0 {
        return
    } else {
        countdown(n: n - 1)
    }
}

countdown(n: 100)
