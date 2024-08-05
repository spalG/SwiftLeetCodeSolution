2053. Kth Distinct String in an Array
Problem Type Easy

Example 1:

Input: arr = ["d","b","c","b","c","a"], k = 2
Output: "a"
Explanation:
The only distinct strings in arr are "d" and "a".
"d" appears 1st, so it is the 1st distinct string.
"a" appears 2nd, so it is the 2nd distinct string.
Since k == 2, "a" is returned. 

Two Solutions Provided
    Both the solutions are be used
    simple -> easy to understand and provides best memory storage
    updated -> must be familiar with concepts of Dictinory, beats  93.75%

Logic:
    1. Find the frequency of each elem in the array.
    2. Now return the kth elem which has frequency of 1.