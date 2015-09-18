class Fibonacci
def self.generate(number)
    sequence = []
    (0..(number-1)).each do |n|
        if n < 2
            sequence << n
        else
            sequence << sequence[-1] + sequence[-2]
        end
    end
    sequence
end
end
