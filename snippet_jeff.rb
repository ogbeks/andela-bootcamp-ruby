class Console
  def self.prompt
    return "This is a console Application \n Enter 'help' to see instruction "
  end
end
=begin
class String
  private
  def self.display(port=$>)
    port.write self
  end
end
=end
class App
 def self.help_text
   return "This is an extension to the command prompt. \n to open a particular task just
   \n Enter 'open ' and the name of file you want to run
   \n Enter 'do ' the name of file and action to take. \n
   e.g do fiber.txt create or do fiber.txt delete..."
 end
end
class Task
  def self.open(task_to_run)
    File.open(task_to_run, "a+")
    File.readlines(task_to_run).each do |line|
      puts line
    end
  end
end
class Action
  def self.perform(*params)
    action_to_take = params[-1]
    if action_to_take.downcase == "delete"
      puts "Enter 'yes' to delete or anything to return back to the main menu"
      input = gets.chomp
      if input.downcase == 'yes'
      File.delete(params[0])
    else
      puts "Wrong input... Terminating command."
    end

    elsif action_to_take.downcase == "create"
      File.new(params[0], "w+")
      puts "You have just created #{params[0]} file."
    end
  end
end
loop do
  ('%s> ' % Console.prompt).display
  input = gets.chomp
  command, *params = input.split /\s/
  case command
    when /\Ahelp\z/i
      puts App.help_text
    when /\Aopen\z/i
      Task.open params.first
    when /\Ado\z/i
      Action.perform *params
    when /\Aexit\z/i
      break
    else
      puts 'Invalid command'
  end
end
