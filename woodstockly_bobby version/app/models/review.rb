class Review < ActiveRecord::Base

	belongs_to :restaurant
		
  validates_presence_of :star_count, :author, :title, :description
  validates_numericality_of :star_count
  validates :star_count, inclusion: 0..5
end
