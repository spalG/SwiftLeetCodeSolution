//O(n)
//Memory beats 56.25%
//Speed beats 93.75%
class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        //Create a dict to count the frequency
        var dict : [String : Int] = [:]
        var c = 0

        //Add elements to dictionary
        arr.forEach {
            dict[$0, default: 0] += 1
        }

        //Get the k elem with elem occurring only once
        for a in arr {
            if dict[a] == 1 {
                c += 1
                if c == k {
                    return a
                }
            }
        }

        return ""
    }
}