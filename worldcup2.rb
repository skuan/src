require 'httparty'

response = HTTParty.get('http://worldcup.sfg.io/matches')

wc_array = response.parsed_response

stadiums_hash = {}
winners_hash = {}


wc_array.each do |game|
	number = game["match_number"]
	puts "\nMatch #{game["match_number"]}: #{game["home_team"]["country"]} vs #{game["away_team"]["country"]}" 
	if game["winner"] == nil
		puts "Not Played"
	elsif game["winner"] == "draw"
		puts "Draw"
	else	
		puts "Winner: #{game["winner"]}"
	end

	stadium = game["location"] 
	unless stadiums_hash.has_key?(stadium)
		stadiums_hash [ stadium ] = [] 
		# what is stadium_hash [stadium]? Is this creating a new array or hash? or key "stadium" setting the value blank.
	end
	stadiums_hash [ stadium ] << number

	winner = game["winner"]
	unless winners_hash.has_key?(winner)
	winners_hash [ winner ] = 0
	end
	winners_hash [ winner ] += 1	
end

puts "\n\n============================="

stadiums_hash.each do |key, value|
	puts "#{key} : #{value}"
end

puts "\n============================="
winners_hash.each do |key, value|
	puts "#{key} : #{value} wins"
end
