class Factorial
  def self.result(num)
  	time = Time.now
  	fact = 1

  	if(num==0)
  	  fact = 1
  	else
  	  i = 1

  	  while(i <=num)
  	  	fact = fact * i
  	  	i = i + 1
  	  end
  	end

  	puts "time taken: #{Time.now - time} seconds"
  	puts "Factorial of #{num} is #{fact}"
  end
end