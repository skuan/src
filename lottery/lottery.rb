puts "Welcome to Bobby's Boathouse Casino."

puts "What is your age?"

age = gets.chomp.to_i


if age < 18
	puts "Go home."
else
	magic_number = rand( 0..10 )
	
	puts "what is your guess?"
	
	user_guess = gets().chomp().to_i()
	puts "Guess was #{user_guess}."
	if user_guess == magic_number
		puts "You win one million dollars! Congratulations!"
	else
		puts "You lose.  The magic number was #{magic_number}."
	end
end