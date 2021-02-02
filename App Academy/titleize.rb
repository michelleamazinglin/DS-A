# Define a method `titleize(title)` that capitalizes each word in a string like 
# a book title.  First word in a title should always be capitalized.  Do not 
# capitalize words like 'a', 'and', 'of', 'over' or 'the'.

LITTLE_WORDS = [
    "a",
    "and",
    "of",
    "over",
    "the"
]

def titleize(title) #O(n^2)
    words = title.split(" ") #O(1)
    new_title = []          #O(1)
    words.each_with_index do |word, i|      #O(n)
        if LITTLE_WORDS.include?(word) && i != 0  #O(n)
            new_title << word   #O(1)
        else
            new_title << word.capitalize  #O(1)
        end
    end
    new_title.join(" ")   #O(1) 
end

puts titleize("the wind of sky")