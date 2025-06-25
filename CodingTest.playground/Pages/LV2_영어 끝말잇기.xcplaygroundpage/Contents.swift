import Foundation

/*
 - n은 사람 수, words는 단어 리스트
 n의 명이 주어진다면, n이 끝나고 다음 싸이클이 시작될 때 사이클 += 1
 영어 끝말잇기를 진행하며, n명이 진행을한다.
 이미 등장했던 동일한 단어를 말하는 순간 탈락한다.
 탈락 시점에 몇번째 싸이클에서 몇번째 사람이 탈락했는지 응답한다.
 탈락자 없이 잘 말했다면 0, 0 리턴
 */
func solution(_ n:Int, _ words:[String]) -> [Int] {
    var current_cycle: Int = 1
    var current_member: Int = 1
    var usedWords: [String] = []
    
    for (index, word) in words.enumerated() {
        current_member = (index % n) + 1
        if (index + 1 > n ) && ((index + 1) % n == 1) {
            current_cycle += 1
        }
        if !usedWords.isEmpty && (usedWords.contains(word) || Array(usedWords.last!).last != Array(word).first!) {
            break
        } else {
            usedWords.append(word)
            continue
        }
    }
    
    return words.count == usedWords.count ? [0, 0] : [current_member, current_cycle]
}

//solution(2, ["hello", "one", "even", "never", "now", "world", "draw"])
// 지금까지 푼문제 중 제일 어려웠다, 3시간동안 풀었는데... 논리적인 공식이 많이 들어가야하는 문제여서 시간이 오래 걸린것같다. 너무 어려웠다. 하지만 혼자힘으로 풀었다는 생각에 기분이 좋아진다.
