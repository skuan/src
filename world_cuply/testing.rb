require 'httparty'

response = HTTParty.get('http://worldcup.sfg.io/matches')

ARRAY = response.parsed_response

ARRAY.each do |hash|
	puts hash['match_number']
	puts hash['location']
	puts hash['home_team']['country']
	puts hash['away_team']['country']
	puts hash['status']
end

