class ReviewsController < ApplicationController
  def new
  end

  def create
    review = Review.new(review_params)

    if review.save
      flash[:notice] = 'YAY'
      redirect_to root_path
    else
      flash[:notice] = review.errors.full_messages
      render :new
    end
  end

  def index
    @reviews = Review.all
  end


  private

  def review_params
    params.permit(:title, :description, :star_count, :author)
  end
end
