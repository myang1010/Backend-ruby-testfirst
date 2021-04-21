#write your code here
def translate(string)
    result = [] 
    vowels = ["a", "e", "i", "o", "u"]

    string.split.each do |word|
        word_copy = word
        min = word.length
        vowels.each do |vowel|        
            if word.downcase.index(vowel) != nil && word.downcase.index(vowel) <=min #find the first vowel's index
                min = word.downcase.index(vowel) 
            end 
        end        
        temp = "" #to save the punctuation
        if !("a".."z").include?(word[word.length-1]) && !("A".."Z").include?(word[word.length-1])
            temp = word[word.length-1] #save the punctuation
            word = word.chop #remove the punctuation
        end 
        new_word = word[min, word.length] + word[0, min]
        if new_word[0].downcase == "u" && new_word[new_word.length-1].downcase == "q" #deal with "qu" case
            new_word = new_word.delete_prefix("u") + "u"
        end 
        if ("A".."Z").include?(word_copy[0]) #capitalized words were capitalized
            new_word = new_word.downcase.capitalize
        end    
        result.push(new_word + "ay" + temp)  
    end            
    return result.join(" ")
end

# Below is the code shared by one student using regex, keep it as reference.
# vowels = ["a", "e", "i", "o", "u"]
# #vowels = 'aeiou'.split('')
# #vowels = %w[a e i o u]

# def translate (string)
#     vowels = %w[a e i o u]
#     words = string.split
#     new_words = []

#     words.each do |word|
#         new_word =
#             if word.match /^.*qu/
#                 first_part = word[/^.*qu/]
#                 last_part = word.delete first_part
#                 last_part + first_part + 'ay'
       
#             else !vowels.include?(word[0])
#                 first_part = word[/[^aeiou]*/]
#                 last_part = word.delete first_part
#                 last_part + first_part + 'ay'
#             end
#             new_words.push new_word
#         end
#         new_words.join ' '
#     end