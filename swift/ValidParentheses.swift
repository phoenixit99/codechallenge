/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.
 

Example 1:

Input: s = "()"
Output: true
Example 2:

Input: s = "()[]{}"
Output: true
Example 3:

Input: s = "(]"
Output: false
 

*/
class Solution {
  func isValid(_ s: String) -> Bool {
        var isValid = true
        var str = s
        if s.count%2 == 0 {
            var index = 0
            
            while (index < s.count) {
                str = str.replacingOccurrences(of: "()", with: "")
                str = str.replacingOccurrences(of: "{}", with: "")
                str = str.replacingOccurrences(of: "[]", with: "")
                index += 1
                if str.isEmpty {
                    return true 
                } else if str.count%2 != 0 {
                    return false 
                }
            }
            if str.isEmpty {
                return true
            }
            return false
        } else {
            return false
        }
    }
}