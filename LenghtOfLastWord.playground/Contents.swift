import Foundation

/* -----------
 Given a string s consisting of words and spaces, return the length of the last word in the string.
 
 A word is a maximal
 substring
 consisting of non-space characters only.
 
 
 
 Example 1:
 
 Input: s = "Hello World"
 Output: 5
 Explanation: The last word is "World" with length 5.
 Example 2:
 
 Input: s = "   fly me   to   the moon  "
 Output: 4
 Explanation: The last word is "moon" with length 4.
 Example 3:
 
 Input: s = "luffy is still joyboy"
 Output: 6
 Explanation: The last word is "joyboy" with length 6.
 
 
 Constraints:
 
 1 <= s.length <= 104
 s consists of only English letters and spaces ' '.
 There will be at least one word in s.
 ---------- */


func findLenght(_ str: String) -> Int {
    let splittedArr = str.split(separator: " ")
    guard let lastWord = splittedArr.last else { return 0 }
    print( splittedArr.endIndex)
    return lastWord.count
   
}

let string = "   fly me   to   the moon      "
findLenght(string)


//Better apprach from leet code
//class Solution {
//    func lengthOfLastWord(_ s: String) -> Int {
//        // find index of the last word's end
//        let reversed = s.reversed()
//        guard let index1 = reversed.firstIndex(where: { !$0.isWhitespace }) else {
//            // string is empty or all characters are whitespace
//            return -1
//        }
//        
//        // find index of the last word's beginning
//        let substring = reversed[index1..<reversed.endIndex]
//        let index2 = substring.firstIndex(where: { $0.isWhitespace })
//        ?? reversed.endIndex
//        
//        return reversed.distance(from: index1, to: index2)
//    }
//}
