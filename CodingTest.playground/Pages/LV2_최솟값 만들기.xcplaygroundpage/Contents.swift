import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    let a = A.sorted(by: <)
    let b = B.sorted(by: >)
    
    var result: Int = 0
    
    for (index, element) in a.enumerated() {
        result += element * b[index]
    }
    return result
}

//solution([1, 4, 2], [5, 4, 4])
// LV2라고 하기에는 너무 쉬웠다
