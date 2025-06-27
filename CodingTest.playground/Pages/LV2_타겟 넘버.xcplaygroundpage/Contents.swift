import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    // 총 몇가지를 도출할 수 있는지 카운트(조건이 만족할때마다 +=1)
    var result = 0
    var num = 1
    
    // 배열의 수에 + 또는 -를 붙이는 조합 즉 2가지의 경우 2^${numbers.count}만큼이므로 (2^5) num은 32
    for it in 0 ..< numbers.count {
        num *= 2
    }

    // 경우의 수만큼 0부터31(즉, 32번)까지의 모든 조합을 탐색
    for i in 0 ..< num {
        var curNum = 0 // 현재 조합기준으로 계산한 결과를 저장
        var curIdx = 0 // 현재 어떤 루프를 처리하고 있는지, 반복문 내에서 +=1을 하여 다음 루프를 진행하려고 사용
        var tempNum = i // 0
        while curIdx < numbers.count { // 0부터 4 즉, 넘버의 배열수만큼 반복
            if tempNum % 2 == 0 {
                curNum -= numbers[curIdx]
            } else {
                curNum += numbers[curIdx]
            }
            curIdx += 1
            tempNum = tempNum / 2
        }
        if target == curNum {
            result += 1
        }
    }
    return result
}

solution([1, 1, 1, 1, 1], 3)

// 대성아 넌 할수 있어, 넌 이겨낼 수 있어 잘해낼수 있어
