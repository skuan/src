require 'httparty'
require 'JSON'


response = HTTParty.get('https://gist.githubusercontent.com/thebucknerlife/ce3598eb76deaec8ae4c/raw/ba25f9a6ed6d1fa9bbc3a41b1e85e8900d6d3e39/mashable.json', verify: false)

hash = JSON.parse(response)

monkey = hash['new']
turtle = hash['rising']
rabbit = hash['hot']

new_articles_sorted = {}

puts "\nNew"
monkey.each do |article|
	# puts article["title"]
	# article_title = article["title"]
	# puts article["short_url"]
	# #total_shares = (article["shares"]["facebook"] + article["shares"]["twitter"] + article["shares"]["twitter"] + article["shares"]["linked_in"] + article["shares"]["google_plus"]).to_i
	# #puts total_shares
	# total_shares = article["shares"]["total"].to_i
	# puts "#{article_title} ---------> #{total_shares}"
	
	article_channel = article['channel']

	if 
		new_articles_sorted.has_key?( article_channel ) new_articles_sorted[article_channel] << article
	else 
		new_articles_sorted[article_channel] = [] new_articles_sorted[article_channel] << article
	end
end

puts new_articles_sorted

# puts "\nRising"
# turtle.each do |article|
# 	puts article["title"]
# 	puts article["short_url"]
# end

# puts "\nHot Stuff"
# rabbit.each do |article|
# 	puts article["title"]
# 	puts article["short_url"]
# end
