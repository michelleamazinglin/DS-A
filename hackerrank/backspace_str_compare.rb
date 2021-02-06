#Two strings are said to be the same if they are of the same length and have the same character at each index. 
#Backspacing in a string removes the previous character in the string.

#Given two strings containing lowercase English letters and the character # which represents a backspace key, 
#determine if the two final strings are equal. 
#Return 1 if they are equal or 0 if they are not. 
#Note that backspacing an empty string results in an empty string.

def compareStrings(s1, s2)
    # Write your code here
    backSpace = "#"
    arr1 = s1.split("")
    new_arr1 = []
    arr2 = s2.split("")
    new_arr2 = []
    arr1.each do |char|
        if char != backSpace
            new_arr1 << char
        else
            new_arr1.pop
        end
    end
    arr2.each do |char|
        if char != backSpace
            new_arr2 << char
        else
            new_arr2.pop
        end
    end
    if new_arr1 != new_arr2
        return 0
    else
        return 1
    end
end
