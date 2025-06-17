import Foundation

/*
 괄호가 정상적으로 짝지어질 때 true를 반환하는 공식이다.
 여는괄호는 +1을, 닫는괄호는 -1을 하여 짝이 지어지는 경우 0이 되니 0일경우 ture을 반환한다.
 */
func solution(_ s:String) -> Bool {
    var temp: Int = 0
    for i in s {
        if i == "(" {
            temp += 1
        } else {
            temp -= 1
        }
        /*
         하지만 처음부터 닫는괄호로 시작하고 여는괄호가 마지막에 짝만 맞춰저 있는 잘못된 괄호 형태 또한 0이 반환되기에 괄호를 계산한 후 -1로 떨어지는 경우(닫는 괄호가 먼저 시작되어 괄호의 형태가 이상할 경우)를 방지하고자 아래의 코드를 추가 하였다.
         */
        if temp < 0 {
            return false
        }
    }
    return temp == 0
}

//solution(")(()()")
