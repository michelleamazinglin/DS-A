def rollTheString(s, roll)
    i = 0
    while i < roll.length
        n = roll[i]
        k = 0
        while k < n
            temp = s[k].ord + 1
            if(temp.ord > 122)
                temp = temp - 26
            end
            s[k] = temp.chr
            k += 1
        end
        i += 1
    end
    return s
end


def rollTheString(s, roll)
    # Write your code here
    letters = ("a".."z").to_a
    new_str = s
    roll.each do |n|
        str = ""
        new_str[0..n-1].each_char do |char|
            old_idx = letters.find_index(char)
            new_idx = (old_idx + 1) % letters.count
            str += letters[new_idx]
        end
        new_str = str[0...n] + new_str[n..-1]
    end
    new_str   
end