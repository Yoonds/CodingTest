import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    let array = [a, b]
    return Int64((array.min()!...array.max()!).reduce(0, +))
}

//solution(3, 5)
