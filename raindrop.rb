class Raindrops
  def self.convert(number)
    message = ""
    if number%3 != 0 && number%5 !=0 && number%7 !=0
    message ="#{number}"
    else
    if number%3 ==0
      message +="Pling"
    end
    if number%5 ==0
      message +="Plang"
    end
    if number%7 ==0
      message +="Plong"
    end
   end
   message
  end
end
