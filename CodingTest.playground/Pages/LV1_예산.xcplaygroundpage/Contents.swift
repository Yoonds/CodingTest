import Foundation

/*
 - 물품 구매 시 각 부서가 신청한 금액 전부 지원
 - 신청한 금액보다 적은 금액을 지원하면 안됨
 - d에는 부서별 신청금액, 현재 회사 예산 budget이 주어질 때 최대, 몇개의 회사에 예산 지원이 가능한지 응답
*/
func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget: Int = budget
    var count: Int = 0
    for i in d.sorted(by: <) {
        if budget - i >= 0 {
            budget -= i
            count += 1
        } else {
            break
        }
    }

    return count
}

solution([1,3,2,5,4], 9)
