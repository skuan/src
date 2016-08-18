class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
  end

  def create
  	the_car = Car.new(car_params)
  	if the_car.save
  		@our_message = "Car successfully saved!"
  	else
  		@our_message = the_car.errors.full_messages
  	end

  end

private #strong parameters - .permit sanitizes the car_params from line 11
	def car_params
		params.permit(:make, :model, :color, :name, :mileage, :year)
	end

end