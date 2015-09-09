require "pry"
def factorial(n)
    if n == 0
        1
    else
      binding.pry
        n * factorial(n-1)
    end
end
puts factorial(5)
