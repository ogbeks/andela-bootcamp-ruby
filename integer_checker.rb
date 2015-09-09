class String
 def valid_float?
   true if Float self rescue false
 end
end

puts "Enter a number: "
user_input = gets.chomp

while ( user_input == "" || user_input.valid_float?.!) do
  puts("Pls, Enter a number: " )
  user_input = gets.chomp
end
user_input = user_input.to_i
if user_input < 0
puts "Number is negative"
elsif user_input > 0
puts "Number is positve"
else
puts "Number is Zero"
end
