puts "What is your favorite language?"
favlang = gets.chomp.downcase

puts "Name a gemstone: "
gemstone = gets.chomp.downcase

if gemstone == "ruby"
	puts "Our favorite language is " + favlang + ".  We think " + gemstone + " is better than " + favlang + "."

else
	puts "Our favorite language is " + favlang + ".  We think " + favlang + " is better than " + gemstone + "."

end