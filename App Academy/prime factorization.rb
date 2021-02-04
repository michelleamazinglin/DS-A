# It is sometimes necessary to be able to break down a number into its prime 
# factors.  The process is called prime factorization.  We can use a factor tree 
# to determine the prime factorization of a number:

#                12
#               /  \
#              /    \
#             4      3
#            / \
#           2   2

# Define a method `prime_factorization(n)` that breaks a number down into it's 
# prime factors.

# example: prime_factorization(12) => [2,2,3]

def prime_factorization(num)
  # Base case - 1 is not a prime so we return an empty array here
  return [] if num == 1
  
  # initialize i to 2, since it is the first prime #
  i = 2
  
  # increment i until we find a prime factor
  i += 1 until is_prime?(i) && num % i == 0 
  
  # Add i to prime factors and make recursive call to find rest
  [i] + prime_factorization(num / i)
end

def is_prime?(num)
  return false if num < 2
  (2...num).none? { |n| num % n == 0 }
end