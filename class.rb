class Student
  attr_accessor :first_name, :last_name, :phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}"
  end
  def favorite_number
    7
  end
end
sammy = Student.new
sammy.first_name ="Sammy"
sammy.introduction('there')
puts "Sammy's favorite number is #{sammy.favorite_number}."
