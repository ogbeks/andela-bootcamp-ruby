class App
  def self.hello
    puts "hello to you too"
  end
end

loop do
  input = gets.chomp
  command, *params = input.split /\s/
  case command
    when 'hello'
      puts App.hello
    else
      puts 'Invalid command'
  end
end
