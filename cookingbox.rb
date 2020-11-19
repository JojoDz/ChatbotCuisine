#relier notrefichier.rb au fichier.json
require 'json'
file = File.read('recipes.json')
data_hash = JSON.parse(file)

#dialogue de début
        puts "Hello, comment ça va aujourd'hui ?"
        puts "C'est quoi ton petit nom ?"
        prenom = gets.chomp
        #variable pour récupérer le prénom que l'utilisatrice aura saisi
        puts "Bienvenu(e) #{prenom}, une petite faim ? Quel ingredient as-tu sous la main ? ;-) "
        #{prenom} : sera remplacé par le prénom de l'utilisatrice
        ingredients = gets.chomp
        #l'utilisatrice rentre les ingredients dont elle dispose

        ingredientList = ingredients.split(",").map(&:downcase)
        #pour transformer le tableau d'ingredients en minuscules

        expectedIngredients = ingredientList.length()
        #pour compter tous les elements du tableau

        puts "Voici les recettes que tu peux faire ! "
        data_hash.each_with_index do |recipe, index|
        #boucle pour chaque recette du JSON afin de mettre un index en argument
          counter = 0
        #permet d'initialiser la variable
            ingredientList.each do |ingredients|
              eachIngredient = recipe["ingredients"].keys.map(&:downcase)
        #pour chaque ingredient aller chercher dans JSON les cles correspondantes
          if eachIngredient.include?(ingredients) then
          counter += 1
          #si notre tableau comprend bien un des ingredients alors on ajoute 1 au compteur
          end
        end
         if expectedIngredients <= counter then
           puts index.to_s + " #{recipe["recipe_name"]}"
          end
        end
            puts " Je suis un peu dur d'oreille, peux-tu inscrire le numero de la recette que tu souhaites ?"
            chosenNumber = gets.chomp
            puts "Tu as choisi la recette : #{data_hash[chosenNumber.to_i]["recipe_name"]}"
            puts data_hash[chosenNumber.to_i]["ingredients"]
            puts data_hash[chosenNumber.to_i]["steps"]

          #afficher la recette souhaite a partir du document JSON
