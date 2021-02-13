def superStack(operations)
    new_arr = []
    ans = []
    operations.each do |str|
        arr = str.split(" ")
        if arr[0] == "push"
            new_arr << arr[1].to_i
            ans << new_arr[-1].to_i
        elsif arr[0] == "pop"
                new_arr.pop
                if new_arr.empty?
                    ans << "EMPTY"
                else
                    ans << new_arr[-1].to_i
                end
        elsif arr[0] == "inc"
            num1 = arr[1].to_i
            num2 = arr[2].to_i
            i = 0
            while i < num1
                new_arr[i] += num2
                i += 1
            end
            ans << new_arr[-1].to_i
        else
        end
    end
    ans.each do |el|
            puts el
    end
end