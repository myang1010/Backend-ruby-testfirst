#write your code here
def add(num1, num2)
    return num1 + num2
end    

def subtract(num1, num2)
    return num1 - num2
end 

def sum(array)
    return array.sum
end 

def multiply(*nums) #ruby treats "*nums" as an array
    multiply = 1
    nums.each do |n| 
        multiply *= n
    end   
    return multiply 
end 

def power(num1, num2)
    num1**num2
end    

def factorial(num)
    result = 1
    num.times do |number|
        result*= (number+1)
    end  
    return result  
end    
