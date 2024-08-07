//Memory: beats 93.75%
//HardCoding The values to print the numbers using recurssion.
// Too many loops taking place.
class Solution {
    func numberToWords(_ num: Int) -> String {
        guard num > 0 else { return "Zero" }
        return helper(num).filter { $0 != "" }.joined(separator: " ")
    }

    func helper(_ num: Int) -> [String] {
        let under20 = ["", "One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"]

        let tens = ["","","Twenty","Thirty","Forty","Fifty","Sixty","Seventy","Eighty","Ninety"]

        switch num {
        case 1...19:
            return [under20[num]]
        case 20...99:
            return [tens[num / 10], under20[num % 10]]
        case 100...999:
            return helper(num / 100) + ["Hundred"] + helper(num % 100)
        case 1_000...999_999:
            return helper(num / 1_000) + ["Thousand"] + helper(num % 1_000)
        case 1_000_000...999_999_999:
            return helper(num / 1_000_000) + ["Million"] + helper(num % 1_000_000)
        case 1_000_000_000...999_999_999_999:
            return helper(num / 1_000_000_000) + ["Billion"] + helper(num % 1_000_000_000)
        default:
            return []
        }
    }
}