











#----6/24/14-------------------------------------------------------------
# require "httparty"


# class WorldCupFan
# 	def yell_the_outcomes

# response = HTTParty.get("http://worldcup.sfg.io/matches/today")


# array = response.parsed_response

# array.each do |match| 
# 	puts "#{match ["home_team"]["country"]} vs. #{match ["away_team"]["country"]}" 
# end

# #puts array.first["home_team"]["goals"] 

# 	end
# end

# fan = WorldCupFan.new
# fan.yell_the_outcomes