# Array, Hash Table, Math

# Given an array of integers nums.

# A pair (i,j) is called good if nums[i] == nums[j] and i < j.

# Return the number of good pairs.

def num_identical_pairs(nums)
    # count = 0
    # hash = {}
    # nums.each do |n|
    #     hash[n] ||= 0;
    #     count += hash[n]
    #     hash[n] += 1
    # end
    # count
#     O(n)
    
    count = 0
    i = 0
    while i < nums.length
        j = 1
        while j < nums.length
            if nums[i] == nums[j] && i < j
                count += 1
            end
            j += 1
        end
        i += 1
    end
    count
    
# O(n^2)
end


nums = [1,2,3,1,1,3]
puts num_identical_pairs(nums)
# There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.