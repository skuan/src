class Restaurant < ActiveRecord::Base

	has_many :reviews	

	validates_presence_of :name, :rating, :cuisine, :delivery
	validates_uniqueness_of :name
	
end
