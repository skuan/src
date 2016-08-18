apps = [ "nachos", "guacamole", "bloomin\' onion", "bread sticks", "garlic knots" ]
entrees = [ "chicken parm\'", "lamb kabob", "veggie fajitas"]
desserts = ["chocolate lava cake", "fruit & cheese plate", "salted caramel pudding"]

#[]
table_order = {}

puts "\nWelcome to Restaurant GA"

puts"\nHow many people?"
table_size = gets.chomp.to_i

table_size.times do 

  puts "\nWhat is your name?"
  name = gets.chomp

  user_order = {} 
  puts "\nWould you like a drink, yes or no?"
  yn = gets.chomp.downcase

  if yn == "no"
    puts "No problem, stay thirsty."
    user_order["drink"] = "N/A"  

    #user_order << "Drink: N/A"


  elsif yn == "yes"
    puts "What would you like?"
    user_input = gets.chomp.capitalize
    selected_drink = "#{user_input}"

    user_order["drink"] = "#{selected_drink}"
  else
    puts "You can only say yes or no... I'm deciding for you."
    user_order["drink"] = "Sludge"
  end


  puts "\nWould you like an appetizer?"
  yn = gets.chomp.downcase

  if yn == "yes"
    puts "Appetizers:"
    apps.each_with_index do |item, index|
      puts "#{index}: #{item}"
    end
    
    puts "What would you like for your appetizer?"
    user_input = gets.chomp.to_i
    selected_appetizer = apps[user_input].capitalize

    user_order ["Appetizer"] = "#{selected_appetizer}"
  elsif yn == "no"
    puts "No problem, no snacks for you."
    user_order["Appetizer"] = "N/A"
  else
    puts "You can only say yes or no... I'm deciding for you."
    user_order["Appetizer"] = "Frogs"
  end


  puts "\nWould you like an entree?"
  yn = gets.chomp.downcase

  if yn == "yes"
    puts "Entrees:"
    entrees.each_with_index do |item, index|
      puts "#{index}: #{item}"
    end

    puts "What would you like for your entree?"
    user_input = gets().chomp().to_i()
    selected_entree = entrees[user_input].capitalize

    user_order["Entree"] = "#{selected_entree}"
  elsif yn == "no"
    puts "No problem, no food for you."
    user_order["Entree"] = "N/A"
  else
    puts "You can only say yes or no... I'm deciding for you."
    user_order["Entree"] = "Groundhog"
  end


  puts "\nWould you like a dessert?"
  yn = gets.chomp.downcase

  if yn == "yes"
    puts "Desserts:"
    desserts.each_with_index do |item, index|
      puts "#{index}: #{item}"
    end

    puts "What would you like for dessert?"
    user_input = gets.chomp.to_i
    selected_dessert = desserts[user_input].capitalize

    user_order["Dessert"] = "#{selected_dessert}"
  elsif yn == "no"
    puts "No problem, no sweets for you."
    user_order["Dessert"] = "N/A"
  else
    puts "You can only say yes or no... I'm deciding for you."
    user_order["Dessert"] = "Rocks"
  end


  puts "\nDo you have any substitutions, additions, or allergies I should make the kitchen aware of?"
  yn = gets.chomp.downcase

  if yn == "yes"
    puts "What can I make the kitchen aware of?"

    user_input = gets.chomp.capitalize
    user_order["Customer Notes"] = "#{user_input}"
  else
    user_order["Customer Notes"] = "N/A"
  end

  puts user_order.inspect 
  table_order[name] = user_order

end

puts "You ordered:"
puts table_order.inspect




# puts "\nYour order:"
# user_order.each do |item|
#   puts " * #{item}"
# end