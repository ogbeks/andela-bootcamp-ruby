#My first Ruby Game App
puts "Welcome to My First Ruby Game App"
print "What is your Name? \n"
input = gets
name = input.chomp
puts "Welcome #{name}!"
# Store a random number for the player to guess.
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1
num_guesses = 0
remaining_guesses = 10 -num_guesses
puts "You've got #{10 - num_guesses} guesses left."
