class AddReviewsToRestaurants < ActiveRecord::Migration
  def change
  	add_column :restaurants, :reviews, :string
  end
end
