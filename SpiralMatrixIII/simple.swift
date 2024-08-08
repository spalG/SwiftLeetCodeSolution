//O(Rows∗Cols)
//Speed: Beats 100%
//Mmeory: Beats 100%
class Solution {
    func spiralMatrixIII(_ rows: Int, _ cols: Int, _ rStart: Int, _ cStart: Int) -> [[Int]] {
        var result = [[Int]]()
        //Direction in which it moves
        var direction = [[0,1],[1,0],[0,-1],[-1,0]]
        var temp = [rStart, cStart]
        var d = 0
        //Increase steps every time
        var step = 1

        while result.count < (rows*cols) {
            // Have to move in 2 directions for each step
            // - - - - ->
            //           |
            //           |
            //           |
            //           v
            for i in 0..<2 {
                for j in 0..<step {
                    //If the values are within the range, only then append
                    if ( 0 <= temp[0] && temp[0] < rows && 0 <= temp[1] && temp[1] < cols) {
                        result.append(temp)
                    }
                    temp[0] += direction[d][0]
                    temp[1] += direction[d][1]
                }
                d = (d + 1) % 4
            }
            // Increase Steps
            step += 1
        }
        
        return result
    }

}