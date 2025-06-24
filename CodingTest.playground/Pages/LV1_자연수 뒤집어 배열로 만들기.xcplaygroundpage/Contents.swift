import Foundation

func solution(_ n:Int64) -> [Int] {
    Array(String(n).map { String($0) }.compactMap { Int($0) }.reversed())
}

solution(12345)
