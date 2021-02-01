# A palindrome is a word or sequence of words that reads the same backwards as
# forwards. Write a method that returns the length of the longest palindrome in
# a given string. If there is no palindrome longer than two letters, return false.

def longest_palindrome(string)
    longest_palindrome = false
    i = 0
    while i < string.length - 1
        j = i + 1
        while j < string.length
            current_str = string[i..j]
            length = current_str.length
            if is_palindrome?(current_str)
                if !longest_palindrome || length > longest_palindrome
                    longest_palindrome = length
                end
            end
            j += 1
        end
        i += 1
    end
    longest_palindrome
end
def is_palindrome?(string)
    string == string.reverse
end
# return false if no palindrom > 2
# return length (integer)

puts longest_palindrome("ahsudjcbak")