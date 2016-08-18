require 'twilio-ruby'

puts "Welcome to Restaurant 720"
Appetizers = ["nachos", "bloomin onion", "guacamole", "breadsticks", "garlic knots"]
Entrees = ["hamburger", "chicken strips", "fried chicken"]
Desserts = ["chocolate cake", "apple pie"]
user_order = []
puts

def list_items(course_array)
	course_array.each_with_index do |item, index|
		puts "#{index}: #{item.capitalize!}"
	end
end

def take_order(x, course_array)
	user_input = gets().chomp().to_i()
	item = course_array[user_input]
	x << item

end

	

puts "Appetizers:"

list_items(Appetizers)	

puts "What would you like for your appetizer?"

take_order(user_order, Appetizers)

puts "Entrees:"

list_items(Entrees)

puts "What would you like for your entree?"

take_order(user_order, Entrees)

puts "Desserts:"

list_items(Desserts)

puts "What would you like for your dessert?"

take_order(user_order, Desserts)

puts "Your order:"
	user_order.each do |item, index|
	puts" * #{item}: #{index}"
 end



account_sid = 	'AC8826a19f2f33159a2ce9a35dcba51a44'
auth_token = 'eb5734c3fb7e86c1c0592f112febc32a'

client = Twilio::REST::Client.new account_sid, auth_token

client.account.messages.create(
	:from => '+19493815547',
	:to => '+17148094205',
	:body => "Your order is #{users_order}!"
	)

# puts 

# puts "Entrees:"

# list_items(Entrees)

# puts "What would you like for your entree?"
# user_input = gets.chomp.to_i
# selected_entree = Entrees[user_input]
# user_order << selected_entree
# puts 

# puts "Desserts:"

# list_items(Desserts)

# puts "What would you like for dessert?"
# user_input = gets.chomp.to_i
# selected_dessert = Desserts[user_input]
# user_order << selected_dessert
# puts

# puts "Your order:"
# user_order.each do |item, index|
# 	puts" * #{item}: #{index}"
# end


