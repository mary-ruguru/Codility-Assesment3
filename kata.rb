#require 'pry'

def merge_strings(str1, str2)
    (0...[str1.length, str2.length].min).reverse_each do |i|
      if str1.end_with?(str2[0..i])
        return str1 + str2[i+1..-1]
      end
    end
    str1 + str2
  end

  #binding pry

#puts merge_strings("abcde", "cdefgh") 
     # "abcdefgh"
#puts merge_strings("abaab", "aabab") 
     # "abaabab"
#puts merge_strings("abc", "def")    
     # "abcdef"
#puts merge_strings("abc", "abc")    
     # "abc"
#puts merge_strings("abaabaab", "aabaabab")  
     # "abaabaabab"