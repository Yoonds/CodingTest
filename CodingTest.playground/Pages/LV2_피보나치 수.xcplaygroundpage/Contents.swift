import Foundation

func solution(_ n: Int) -> Int {
    var a = 0, b = 1
    for _ in 2...n {
        let temp = (a + b) % 1234567
        a = b
        b = temp
    }
    return n == 0 ? a : b
}

//solution(5)
