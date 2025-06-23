import Foundation

/*
 - 수확한 귤 중 k개를 골라서 상자에 담아서 판매할 예정
 - k는 귤을 판매하고 싶은 양, tangerine은 실제 귤의 크기가 종류별로 담긴 배열
 - k의 갯수가 입력됬을 때 tangerine 배열에서 판매할 수 있는 조합에서의 종류를 최소화해서 리턴
 */
func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var k = k // 사과를 역으로 조금씩 덜어내기위해 변수로 할당
    var kindDic: [Int: Int] = [:] // 사과의 크기별 갯수를 보관하는 dic
    var kindCnt: Int = 0 // 몇가지의 종류가 필요한지 최종 반환할 변수
    
    // 귤 배열에서 크기 종류별 갯수가 몇개 존재하는지 dic으로 정리
    for number in tangerine {
        kindDic[number, default: 0] += 1
    }
    
    // 종류별 갯수를 정리해놓은 dic에서 내림차순으로 값기준(갯수) 정렬
    let sortedKind = kindDic.sorted { $0.value > $1.value }
    
    // 판매할 갯수 k에서 값이 많은 순으로 덜어내기(큰순으로 덜어내면 종류를 최소화 할 수 있음)
    // 하지만, 덜어내려고 시도할 때 0보다 작아지면
    // k가 0보다 크면 덜어내야함
    for dic in sortedKind {
        if k > 0 {
            k -= dic.value
            kindCnt += 1
        } else {
            break
        }
        
    }
    return kindCnt
}

//solution(2, [1, 1, 1, 1, 2, 2, 2, 3]);
// 처음에는 포기하고 풀이를 볼까 생각하였지만, 하나씩 풀어가니까 결국 스스로 힘으로 풀게 되었다. 시간은 2시간 좀 더걸린것같다.
