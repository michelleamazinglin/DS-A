# Define a method `pig_latinify(sentence)` that translates a sentence into pig 
# latin. You may want a helper method.

## Rules
# In the English language, vowels are the following letters: 
# ['a', 'e', 'i', 'o', 'u'] Consonants are all other letters.

#  Pig latin translation uses the following rules:
#  1. If the word begins with a vowel, simply append `ay` onto the end.
#      ex. 'apple' => 'appleay'
#  2. If the word begins with a consonant, move the starting consonants to the 
#     end of the word and then append `ay`
#      ex1. 'pearl' => 'earlpay'
#      ex2. `school` => `oolschay`
#  3. Treat `qu` at the start of a word as a singular consonant.
#      ex1. `queen` => `eenquay`
#      ex2. `square` => `aresquay`

def pig_latinify(sentence)
    words = sentence.split(" ")
    new_words = []
    vowels = ["a","e","i","o","u"]
    words.each do |word|
        if vowels.include?(word[0])
            new_words << word += "ay"
        elsif word[0] == "q" && word[1] == "u"
            i = 2
            while i < word.length
                if vowels.include?(word[i])
                    new_words << word[i..-1] + word[0...i] + "ay"
                    break
                end
                i += 1
            end
        else
            i = 0
            while i < word.length
                if vowels.include?(word[i])
                    new_words << word[i..-1] + word[0...i] + "ay"
                    break
                end
                i += 1
            end
        end
    end
    return new_words.join(" ")
end

puts pig_latinify("apple")
puts pig_latinify("queen")
puts pig_latinify("school")