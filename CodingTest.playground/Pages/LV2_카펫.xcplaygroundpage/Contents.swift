import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    for n in (1...Int(sqrt(Double(yellow)))).reversed() {
        if (yellow/n+2) * (n+2) == (brown + yellow) {
            return [(yellow/n+2), n+2]
        }
    }
    return [0, 0]
}

//solution(10, 2)
