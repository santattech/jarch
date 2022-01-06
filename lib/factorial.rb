# frozen_string_literal: true

class Factorial
  def self.result(num)
    time = Time.now
    fact = 1

    if num.zero?
      fact = 1
    else
      i = 1

      while i <= num
        fact *= i
        i += 1
      end
    end

    puts "time taken: #{Time.now - time} seconds"
    puts "Factorial of #{num} is #{fact}"
    fact
  end
end
