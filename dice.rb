require "sinatra"

get '/' do 
	@my_roll = rand(1..6)
	@opp_roll = rand(1..6)

	if @my_roll - @opp_roll < 0 
		erb :lose
		
		# "You rolled a #{my_roll} <br> Your opponent rolled a #{opp_roll}
		# <br> You lose :("
	elsif @my_roll - @opp_roll == 0
		erb :draw
	else
		erb :win
	end
end