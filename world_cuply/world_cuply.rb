require 'httparty'
require 'sinatra'

response = HTTParty.get('http://worldcup.sfg.io/matches')

ARRAY = response.parsed_response



get '/' do 

	erb :home
	
end


get '/results' do 

	if params['sort'] == 'hometeam'
		@sort_by = ARRAY.sort_by do |hash|
			hash['home_team']['country']
		end
	elsif 
		params['sort'] == 'location'
		@sort_by = ARRAY.sort_by do |hash|
			hash['location']
		end
	elsif params['sort'] == 'awayteam'
		@sort_by = ARRAY.sort_by do |hash|
			hash['away_team']['country']
		end
	elsif params['sort'] == 'status'
		@sort_by = ARRAY.sort_by do |hash|
			hash['status']
		end
	else
	end
	
	
	erb :results

end