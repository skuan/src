#
# 1. Print each match in this format: 'Match 45: USA vs Germany'.
#
# 2. Below each match, print the winner in this format: 'Winner: Germany'. If the game hasn't been played, print 'Not Played'. If the match ended in a tie, print 'Draw'.
#
# 3. Group all the matches by location, and show a list of each location with all its match numbers.
#
# 4. Print a list of the teams with at least one win, including their total number of wins.
#
# Bonus
#
# 5. (Based on 4) Make sure your list of teams doesn't incluse 'Draw'.
#
# 6. (Based on 4) Include teams with no wins. Make sure only teams are in your list.

require 'httparty'

response = HTTParty.get('http://worldcup.sfg.io/matches')

array = response.parsed_response
stadiums_hash = {}
winners_hash = {}

array.each do |match|

  number = match['match_number']
  home_team = match['home_team']['country']
  away_team = match['away_team']['country']

  puts "\n#{number}: #{home_team} vs #{away_team}.\n"

  winner = match['winner']
  # this could be a country, 'Draw' or nil

  if winner == nil
    puts " Not Played"
  elsif winner == 'Draw'
    puts " Draw"
  else
    puts " #{winner}"
  end

  stadium = match['location']

  unless stadiums_hash.has_key?(stadium)
    stadiums_hash[ stadium ] = []
  end

  stadiums_hash[ stadium ] << number

  unless winners_hash.has_key?(winner)
    winners_hash[ winner ] = 0
  end

  winners_hash[ winner ] += 1
end

winners_hash.delete('Draw')
winners_hash.delete(nil)

puts "\n\nMatch Numbers by Stadium"
puts "===========================\n"

stadiums_hash.each do |key, value|
  puts "#{key}: #{value}"
end

puts "\n\nTeams With At Least One Win"
puts "===========================\n"

winners_hash.each do |key, value|
  puts "#{key}: #{value} wins"
end

# require "httparty"


# # class WorldCupFan
# # 	def yell_the_outcomes

# response = HTTParty.get('http://worldcup.sfg.io/matches/')

# array = response.parsed_response

# array.each do |match| 
# 	number = match["match_number"]
# 	home_team = match["home_team"]["country"]
# 	away_team = match["away_team"]["country"]

# stadium_hash.each do |key, value|
# 	puts "#{key}: #{value}"
# 	puts "\n#{number}: #{home_team} vs #{away_team}"

# 	winner = match["winner"]
# 	if winner == nil
# 		puts "Not Played"
# 	elsif winner == "Draw"
# 		puts "Draw" 
# 	else
# 		puts "#{match}"	
# 	end
# 	stadium = match["location"]
# 	unless stadium_hash.has_key?(stadium)
# 		stadium_hash[stadium] = []
# 	end
# 	stadium_hash << number
# 	unless winners_hash.has_key?(winner)
# 		winners_hash[winner] = 0
# 	end
# 	winners_hash[winner] += 1
	
# 	puts winners_hash.inspect 
# 	end
# 	winners_hash.delete("Draw")
# 	winners_hash.delete(nil)
# end

# puts "\n\nMatch Numbers by Stadium"
# puts "============================\n"



# # 	"-----------------------------"
# # 	puts "#{match ["status"].capitalize}"
# # 	puts "Location: #{match ["location"]}"
# # 	puts "#{match ["home_team"]["country"]}: #{match["home_team"]["goals"]} VS #{match ["away_team"]["country"]}: #{match["away_team"]["goals"]}"
# # 	if match["winner"].nil?
# # 		puts "none"
# # 	elsif match["winner"] == "draw"
# 		puts "draw"
# 	else
# 		puts match["winner"]
# 	end
		
# 	puts "Winner: #{match ["winner"]}" 
# 	puts "-----------------------------"
# 	puts
# 	end
# end

# end

# fan = WorldCupFan.new
# fan.yell_the_outcomes

#puts array.first["home_team"]["goals"] ---------------

# class WorldCupTeam
# 	def favorite

# response = HTTParty.get("http://worldcup.sfg.io/matches")
# array = response.parsed_response

# puts "Which country are you rooting for?"
# fav_team = gets.chomp
# array.each do |match|
# 	puts "#{match[fav_team]}"
# 	end
# end
# end
# team = WorldCupTeam.new
# team.favorite
