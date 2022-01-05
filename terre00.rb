#!usr/bin/env ruby

#puts "hello world !"

=begin  
*********************** L’alphabet
  
Créez un programme qui affiche l’alphabet en lettres minuscules suivi d’un retour
 à la ligne.

Exemples d’utilisation :
$> python exo.py
abcdefghijklmnopqrstuvwxyz
$>

Attention : votre programme devra utiliser une boucle.    
=end


# creer un tableau qui contient les 26 lettres de l'alphabet
tableau = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
     'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
# test :
#puts tableau.inspect

#parcourir le tableau et afficher chaque lettre (print)
tableau.each do |lettre|
    print lettre.to_s
end
#retour a la ligne sur la derniere valeur : puts 
puts "\n"

