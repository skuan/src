#Fizzbuzz

seq = (1..100) 
#instinctually set a variable = to the range 1.100 inclusive although I saw online that you can directly run a .each on (1..100) w/o defining a variable.

seq.each do |i| 
	#element i for integer, with the following conditional block
	if i % 15 == 0
		puts "FizzBuzz"
		#noticed when I didn't put i % 15 first, it was ignored.  I went with i % 15 based on mathematical knowledge and convenience.  I saw online you could do "if i % 3 == 0 and i % 5 == 0 puts 'FizzBuzz'"
	elsif i % 3 == 0 
		puts "Fizz"
	elsif i % 5 == 0 
		puts "Buzz" 
	else 
		puts i
	end
	#closes conditional block
end
			

