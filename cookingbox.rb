#relier notrefichier.rb au fichier.json
require 'json'
file = File.read('recipes.json')
data_hash = JSON.parse(file)

#dialogue de début
        puts "Hello, comment ça va aujourd'hui ?"
        puts "C'est quoi ton petit nom ?"
        prenom = gets.chomp
        #variable pour récupérer le prénom que l'utilisatrice aura saisi
        puts "Bienvenu(e) #{prenom}, une petite faim ? ça tombe bien, voici quelques recettes : "
        #{prenom} : sera remplacé par le prénom de l'utilisatrice
    # affichage des 3 recettes 
    data_hash.each do |recette|
        puts "#{recette["recipe_id"]} - #{recette["recipe_name"]}"
    end

    puts "Inscris le numéro de la recette qui t'intéresse :"
    user_choice = gets.chomp

    recettechoice = user_choice
        
    recetteinput = data_hash.each do |recette|
        puts "#{recette["recipe_id"]} - #{recette["recipe_name"]} - #{recette["steps"]}"
    end

   if user_choice == recettechoice
        puts recetteinput
    end
    # if user_choice == 2
    #     puts data_hash[1]
    # end
    # if user_choice == 3
    #     puts data_hash[2]
    # end



# afficher les 3 recettes
# l'utilisatrice choisit une de ses recettes

#imprimer toute la première recette dans le fichier json sur une même ligne: 
#print data_hash[0]

# #création d'une variable  pour première recette
# recette = data_hash[0]
# #print à l'écran le nom de la première recette
# puts recette["recipe_name"]

#version + rapide et directe : 
# puts data_hash[0]["recipe_name"]


#message erreur si pas choisi de recette 
# user_choice = gets.chomp
# while not user_choice == recette1 || recette2 || recette3 do
#     puts "N'oublie pas de choisir une recette ;-)"
#     user_choice = gets.chomp
# puts "Tu as choisi" + user_choice