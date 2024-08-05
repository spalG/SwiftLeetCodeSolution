
//O(n x n)
//Memory beats 93.75%
//Speed beats 6.25%
class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {

        //Count variable to check if elem is repeated
        var count = 0
        //To match the variable with k
        var c = 0

        //Loop each element in array
        for i in (0 ..< arr.count) {
            count = 0
            for j in (0 ..< arr.count) {
                if arr[i] == arr[j] {
                    count += 1
                }
            }

            //Collect the elem occuring only once
            if count == 1 {
                c += 1
                
                //If matched with k element return element
                if c == k {
                    return arr[i]
                }
            }
        }
        return ""
    }
}