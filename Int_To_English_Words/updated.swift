//Memory: beats 36.96%
//Speed: beats 91.30%
class Solution {
    func numberToWords(_ num: Int) -> String {
        var words = ["Thousand", "Million", "Billion"]
        var result = ""
        var temp = 0
        var n = num
        if (n == 0) {
            return "Zero"
        }
        while (n > 0) {
            if (n >= 1_000_000_000) {
                temp = n / 1_000_000_000
                result += numberTowordsBelowHundred(temp) + "Billion"
                n %= 1_000_000_000
            }
            else if (n >= 1_000_000) {
                temp = n / 1_000_000
                result += numberTowordsBelowHundred(temp) + "Million"
                n %= 1_000_000
            }
            else if (n >= 1_000) {
                temp = n / 1_000
                result += numberTowordsBelowHundred(temp) + "Thousand"
                n %= 1_000
            }
            else {
                result += numberTowordsBelowHundred(n)
                n = 0
            }
            result += " "
            //print(result.trimmingCharacters(in: .whitespacesAndNewlines))
        }
        return result.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    func numberTowordsBelowHundred(_ num: Int) -> String {
        var oneToTwenty = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen", "Twenty"]
        var TenToHundred = ["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
        var n = num
        var temp = 0
        var result = ""
        while (n > 0) {
            if (n > 99) {
                temp = n / 100
                result += oneToTwenty[temp-1] + " Hundred"
                n %= 100
            }
            else if (n > 19) {
                temp = n / 10
                result += TenToHundred[temp-1]
                n %= 10
            }
            else {
                result += oneToTwenty[n-1]
                n = 0
            }
            //print(result)
            result += " "
        }
        return result
    }
}