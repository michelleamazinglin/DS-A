# A message containing letters from A-Z can be encoded into numbers using the following mapping:

# 'A' -> "1"
# 'B' -> "2"
# ...
# 'Z' -> "26"
# To decode an encoded message, all the digits must be mapped back into letters using the reverse of the mapping above (there may be multiple ways). For example, "111" can have each of its "1"s be mapped into 'A's to make "AAA", or it could be mapped to "11" and "1" ('K' and 'A' respectively) to make "KA". Note that "06" cannot be mapped into 'F' since "6" is different from "06".

# Given a non-empty string num containing only digits, return the number of ways to decode it.

# The answer is guaranteed to fit in a 32-bit integer.

# Input: s = "12"
# Output: 2

# Input: s = "226"
# Output: 3


def num_decodings(s, memo = {})
    return memo[s] if memo.key?(s)
   
    num      = s[0]
    num_next = s[1]
    
    return 0 if num == '0'
    return 1 if num.nil?
    return 1 if num_next.nil?
    
    result = num_decodings(s[1..-1], memo)

    if (num + num_next).to_i.between?(1,26)
        result += num_decodings(s[2..-1], memo) 
    end
    
    memo[s] = result
    result
end