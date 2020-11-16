#relier notrefichier.rb au fichier.json
require 'json'
file = File.read('recipes.json')
data_hash = JSON.parse(file)

#dialogue de début
puts "Bonjour, comment allez-vous?"
puts "Quel est votre prénom?"
prenom = gets.chomp
#variable pour récupérer le prénom que l'utilisatrice aura saisi
puts "Bienvenue #{prenom}, que recherchez vous aujourd'hui?"
# #{prenom} : sera remplacé par le prénom de l'utilisatrice

#imprimer toute la première recette dans le fichier json sur une même ligne: 
#print data_hash[0]

# #création d'une variable  pour première recette
# recette = data_hash[0]
# #print à l'écran le nom de la première recette
# puts recette["recipe_name"]

#version + rapide et directe : 
puts data_hash[0]["recipe_name"]
