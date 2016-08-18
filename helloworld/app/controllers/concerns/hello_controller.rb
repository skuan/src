class HelloController < ApplicationController

	def home
		@greeting = 'Hello world!'
	end

	def sup
		@casual_greeting = 'Yo!'
	end

end