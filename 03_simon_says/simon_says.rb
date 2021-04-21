#write your code here
def echo(string)
    return string
end    

def shout(string)
    return string.upcase
end 

def repeat(string, num=2)   
    result = ""
    result = (string + " ") * num
    return result.strip
end 

def start_of_word(string, num)
    return string[0, num]
end 

def first_word(string)
    return string.split[0]
end

def titleize(string)
    little_words= ["and", "over", "the"]
    result = ""
    string.split.each do |word|
       if !little_words.include?(word) 
        result += word.capitalize + " "
       else
        result += word + " "
       end   
    end
    result = result[0].upcase + result[1,result.length-1]
    return result.strip
end