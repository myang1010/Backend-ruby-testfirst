class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end   
 
  def time_string 
    hours = @seconds / 60 / 60
    seconds = @seconds % 60
    tmp = @seconds / 60
    minutes = tmp % 60
   
    padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
  end 

  def padded(num)
    return result = num >= 10 ? num.to_s : "0#{num}"
  end 
end
