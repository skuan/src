class AddColumnsToReview < ActiveRecord::Migration

  def change
  	add_column :reviews, :name, :string 
 	add_column :reviews, :rating, :float 
 	add_column :reviews, :title, :string 
 	add_column :reviews, :review, :string
 end
end
