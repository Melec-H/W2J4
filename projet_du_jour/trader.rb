require 'rubygems'
require 'nokogiri'
require 'open-uri'

def hacking_of_cryptomarket

	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

	price = page.css("td[5]/a").text

#	puts price

end

def nom_monnay

	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

	nom = page.css("td[2]/a").text

	#puts nom
end




def rangement(nom,price)

hash = hash.new

hash[nom => price]

nom_monnay

end


price = hacking_of_cryptomarket

# nom = nom_monnay

hash = Hash.new


price.each.with_index do |prix,i| 
        
	hash[price["prix"]]=nom[i]
        end
        

puts hash
