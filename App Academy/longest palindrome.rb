# A palindrome is a word or sequence of words that reads the same backwards as
# forwards. Write a method that returns the length of the longest palindrome in
# a given string. If there is no palindrome longer than two letters, return false.

def longest_palindrome(string)
    longest_palindrome = false  #O(1)
    i = 0                       #O(1)
    while i < string.length - 1 #O(n)
        j = i + 1               #O(1)
        while j < string.length #O(n)
            current_str = string[i..j]  #O(1)
            length = current_str.length #O(1)
            if is_palindrome?(current_str)  
                if !longest_palindrome || length > longest_palindrome   #O(1)
                    longest_palindrome = length #O(1)
                end
            end
            j += 1  #O(1)
        end
        i += 1  #O(1)
    end
    longest_palindrome
end
def is_palindrome?(string)
    string == string.reverse    #O(1)
end
# return false if no palindrom > 2
# return length (integer)

#O(n)

puts longest_palindrome("ahsudjcbak")