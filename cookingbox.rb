require 'json'
file = File.read('recipes.json')
data_hash = JSON.parse(file)

puts "Bonjour, comment allez vous?"
puts "Quel est votre prénom?"
prenom = gets.chomp
puts "Bienvenue #{prenom}, que recherchez vous aujourd'hui?"
#print data_hash[0,'recipe_name']
#recette = data_hash[0]
puts data_hash[0]["recipe_name"]
