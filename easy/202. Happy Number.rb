#A happy number is a number defined by the following process:

#Starting with any positive integer, replace the number by the sum of the squares of its digits.
#Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
#Those numbers for which this process ends in 1 are happy.
#Return true if n is a happy number, and false if not.

def is_happy(n)
    arr = []
    while !arr.include?(n)
        arr << n
        sum = 0
        n.digits.each do |i|
            sum += i ** 2
        end
        return true if sum == 1
        n = sum
    end
    false
end

# create an empty arr
# check if the cycle repeats ( if the number is in the arr already)
# results in if sum is equal to one, return true
# if sum (set to equal to n) is in arr already, return false