class PantsController < ApplicationController

	def home
	end

	def search
		query = params['query'].gsub(' ', '+') #this last gsub converts spaces in between city names to '+' so that it can be searched
		url = "http://api.openweathermap.org/data/2.5/weather?q=#{query},us"
		@response = HTTParty.get( url )
		
		celcius = @response['main']['temp_min'] - 273.15
		@low = celcius * 9/5 + 32

		if @low < 74
			@message = "PANTS!"
		else
			@message = "No Pants"
		end
	end

end
