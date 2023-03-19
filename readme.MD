# TOY PROBLEM

# CHALLENGE: Merge overlapping strings

## BDD

We are requested to create a function 

It should merge two strings together.

It does so by merging the end of the first string with the start of the second string together when they are an exact match.


#### GIven

function

It merge two strings together.

#### Expected results

"abcde" + "cdefgh" => "abcdefgh"

"abaab" + "aabab" => "abaabab"

"abc" + "def" => "abcdef"

"abc" + "abc" => "abc"

#### NOTE

The algorithm should always use the longest possible overlap.

"abaabaab" + "aabaabab" would be "abaabaabab" and not "abaabaabaabab"

## Pseudo code

Step1: Define the function with two string arguments: `def merge_strings(str1, str2)`

Step2: Iterate over a range of numbers from min(str1.length, str2.length) down to 0, in descending order. This will allow me to check the possible overlaps from the longest to the shortest.

Step3: Check if str1 ends with the substring of str2 starting at index 0 and going up to the current index in the loop. I used the String#end_with? and String#slice methods for this.

Step4: If the matching overlap, concatenate str1 with the remaining part of str2 starting from the index after the overlap. You can use the String#+ and String#slice methods for this.

Step6: Return the resulting merged string.




