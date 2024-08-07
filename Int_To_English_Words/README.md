273. Integer to English Words
Problem Type Hard

Convert a non-negative integer num to its English words representation.

Example 1:

Input: num = 123
Output: "One Hundred Twenty Three"


Example 2:

Input: num = 12345
Output: "Twelve Thousand Three Hundred Forty Five"


Example 3:

Input: num = 1234567
Output: "One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven" 

Two Solutions Provided
    Both the solutions are be used
    simple -> easy to understand and provides best memory storage
    updated -> updation of the simple code, beats 91.3%

Logic:
    1. Divide the number on basis of 1000 i.e., 1_000, 1_000_000, 1_000_000_000,....
    2. Print the words for Hundred and below numbers.
        2.1 Get value words for One To Twenty.
        2.2 Get value words for TentoNinety -> only /10 numbers i.e., Ten, Twenty, Thirty....., Ninety.
    3. Trim the final output.