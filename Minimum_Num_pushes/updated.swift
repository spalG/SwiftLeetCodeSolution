
//O(n x logn)
//Early Submitted at that moment
//Memory beats 100%
//Speed beats 100%
class Solution {
    func minimumPushes(_ word: String) -> Int {
        var dict : [Character:Int] = [:]
        var result = 0

        //Get Frequency of each character
        for c in word {
            dict[c, default: 0] += 1
        }
        
        //Sort and enumerate the frequency
        //Sum the clicks, as only 8 nums are present (index)/8
        //nums start from 2 to 9 so (+1)
        for (i,v) in dict.values.sorted(by: >).enumerated() {
            result += v * (i/8 + 1)
        }
        return result
    }
}