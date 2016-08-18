class ReviewsController < ApplicationController

	def index
	end

	def create
	    review = Review.new(review_params)

	    if review.save
	    	puts review_params
	      flash[:notice] = 'YAY'
	      redirect_to '/'
	    else
	      flash[:notice] = review.errors.full_messages
	      render :new
	  end
	end
	    
private 

	def review_params
		params.permit(:name, :rating, :title)
	end


	

end
