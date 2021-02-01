 # Define a method `String#symmetric_substrings` that returns an array of 
  # substrings that are palindromes.  Only include substrings of length > 1.

  # example: "cool".symmetric_substrings => ["oo"]

  def symmetric_substrings(string)
    arr = []
    string.length.times do |start_pos|
        (2..(string.length - start_pos)).to_a.each do |end_pos|
            substr = string[start_pos...(start_pos + end_pos)]
            arr << substr if substr == substr.reverse
        end
    end
    arr
  end

  puts symmetric_substrings("helloll")