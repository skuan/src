puts "Welcome to Restaurant 720"
puts
 
courses = {"appetizers" => ["nachos", "bloomin onion", "guacamole", "breadsticks", "garlic knots", "none"],
"entrees" => ["hamburger", "chicken strips", "fried chicken", "none"],
"desserts" => ["chocolate cake", "apple pie", "none"],
"drinks" => ["soda", "wine", "coffee", "tea", "none"]}
order = []
notes = [] 
 
def ordering(courses, order, notes)

puts "What course would you like?"
puts courses.keys
user_input = gets().chomp().downcase.to_s
puts

courses[user_input].each_with_index do |item, index|
puts "#{index} : #{item}"
end

user_item = gets.chomp.to_i
selected = courses[user_input][user_item]
order << selected
# look carefully at what you are adding to the order array
puts 

puts "Notes for the kitchen: "
user_notes = gets.chomp
notes << user_notes

end
 
8.times do |ordering|
	puts "Would you like anything? (y/n)"
	yn = gets.chomp
	if yn == "y"
		ordering(courses, order, notes)
	else
		break
	end
end
 
puts "your order is: "
order.each do |item|
puts "* #{item}"
end
puts
puts "your notes are: #{notes}" 



=begin
	
rescue Exception => e
	
end
puts "Welcome to Restaurant 720"
puts

courses = {"appetizers" => ["nachos", "bloomin onion", "guacamole", "breadsticks", "garlic knots", "none"],
"entrees" => ["hamburger", "chicken strips", "fried chicken", "none"],
"desserts" => ["chocolate cake", "apple pie", "none"],
"drinks" => ["soda", "wine", "coffee", "tea", "none"]}
order = []

def ordering(courses, order)
	puts "What course would you like?"
	puts courses.keys
	user_input = gets().chomp().downcase.to_s
	puts 

	courses[user_input].each_with_index do |item, index| 
		puts "#{index} : #{item}"
	end
	
	user_item = gets.chomp.to_i 
	selected = courses[user_input][user_item]
	order << user_item
	
	5.times do |ordering|

	puts "would you like anything else? (y/n)"
	yn = gets.chomp.to_s
	if yn == "y" 
		ordering(courses, order)
		#ordering
		#I wan't to repeat the method starting at line 11 or loop it back to line 11.
	else
		break 
	end
end 



puts "your order is: "
order.each do |item|
	puts "#{item}"

end
=end
