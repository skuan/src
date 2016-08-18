class RestaurantsController < ApplicationController
	
	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurants = Restaurant.find(params[:id]) #what if you wanted the restaurant 'name to show up in the URL and not the id#?'
		
	end

	def create
	end
end