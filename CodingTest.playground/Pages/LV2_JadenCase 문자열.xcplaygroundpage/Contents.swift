import Foundation

/*
 
 */
func solution(_ s: String) -> String {
    return s.lowercased().enumerated().map { index, char in
        if index == 0 || s[s.index(s.startIndex, offsetBy: index - 1)] == " " {
            return String(char).uppercased()
        } else {
            return String(char)
        }
    }.joined()
}

solution("for the last week")
