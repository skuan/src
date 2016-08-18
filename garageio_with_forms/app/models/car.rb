class Car < ActiveRecord::Base

	validates_presence_of :name, :color, :make, :model
	#required names

	validates_uniqueness_of :name
	#no same name

	validates :year, numericality: true

	#custom validator
	validate :starts_with_f
		def starts_with_f
			unless name.downcase.start_with?('f')
				errors.add(:name, 'must begin with an f')
			end
		end

end


# Notes
# 
# Create a model file and a migration file
#
#     rails generate model model_name attribute_1:type attribute_2:type
#
#     (possible types: string, integer, type, datetime)
#
#
# Migrate the database, using the migration files you've created
#
#     rake db:migrate
#
# If you run into issues, delete the database file (db/whatever.sqlite3) 
# and then edit your migration files (db/migrations/...) and try to migrate
# again.
# 