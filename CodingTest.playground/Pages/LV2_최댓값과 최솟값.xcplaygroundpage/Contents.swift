/*
 String 형태의 문자열이 주어지면 내부에서 최댓값과 최솟값을 찾는 문제였다.
 */
func solution(_ s:String) -> String {
    let numbers = s.split(separator: " ").compactMap { Int($0) }
    return "\(numbers.min()!) \(numbers.max()!)"
}

//solution("1 2 3 4")
// 솔직히 난이도가 연습문제라 그런지 굉장히 낮았어서 쉽게풀 수 있는 문제였다.
