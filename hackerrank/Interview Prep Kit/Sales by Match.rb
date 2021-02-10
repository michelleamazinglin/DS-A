#There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.


def sockMerchant(n, ar)
hash = {}
count = 0 
ar.each do |n|
    if !hash.has_key?(n)
        hash[n] = 1
    else
        hash[n] -= 1
        count += 1
        hash.delete(n)        
    end
end
count
end


ar = [10,20,20,10,10,30,50,10,20]
n = 9
puts sockMerchant(n, ar)
# out put : 3

