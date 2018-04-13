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

#	puts nom
end

noms = nom_monnay.split(

prices = hacking_of_cryptomarket

puts prices
puts noms[0]

n = 0
i = 0

puts "Données récupérées avec succès"
puts "Afficher le cours des cryptomonaies (ça fait beaucoup de texte) ? (y/n)"
rep=gets.chomp
  if rep == "y"

    ##### Grâce à cette boucle, on joint ensemble le nom et la currency
    while  n < prices.length
                puts noms[i] + prices[i]
                puts "---------------"
                n +=1
                i +=1
    end
  else
    puts "Bien reçu chef !"
end 
