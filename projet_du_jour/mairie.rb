require 'rubygems'
require 'nokogiri'   
require 'open-uri'

#definition de la methode pour acceder au mail d'une page

def get_all_the_urls_of_a_townhall_from_its_webpage(url)

	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com#{url}")) #on colle l'url spécifique à l'url de base

	links = page.css("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").text #mettre .text permet de n'avoir que l email

	puts links
	

end

#definition de la methode pour acceder aux urls des mairies du Val d'Oise

def get_all_the_urls_of_val_doise_townhalls
	
	array=Array.new

	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	
	links = page.css("a.lientxt")
	
	links.each do |el| 
	
	coucou = el['href']
	
	array.push(coucou)	
	
	end	

	return array
		
end


array=get_all_the_urls_of_val_doise_townhalls #on met dans array les urls des pages des mairies du Val d'oise


array.each do |url| get_all_the_urls_of_a_townhall_from_its_webpage(url) end #on itère dans array et on met chaque url en argument de la methode get_all_the_urls_of_val_doise_townhalls






