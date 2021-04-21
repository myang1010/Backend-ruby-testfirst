class Book
# write your code here  
    attr_accessor :title
    def initialize
        @title = ""
    end   
    
    def title
        little_words= ["and", "over", "the", "an", "a", "in", "of"]
        result = ""
        @title.split.each do |word|
            if !little_words.include?(word) 
                result += word.capitalize + " "
            else
                result += word + " "
            end
        end       
        result = result[0].upcase + result[1,result.length-1]
        title = result.strip    
    end
end

#Another student's code using each_with_index method    
# def title
#     little_words = ["and","the","a","an","in","of","in"]
#     c= ""
#     @title.split.each_with_index do |string, index|
#         if index == 0
#             c=string.capitalize
#         elsif little_words.include? string
#             c+= " " + string
#         else c+= " " + string.capitalize
#         end 
#     end
#     return c
# end
