=begin
    *********************** Inverser une chaîne

Créez un programme qui affiche l’inverse de la chaîne de caractères donnée en argument

Exemples d’utilisation :
$> node exo.js “Hello world!”
!dlrow olleH

$> node exo.js “lehciM”
Michel

Attention : je compte sur vous pour gérer les potentielles erreurs d’arguments
=end

# on a la method .reverse!
# mais je suppose que ce n'est pas le but de l'exercice

#on choppe la string en argument, direction un tableau

tableau = []
for index in 0..ARGV.length-1
#  tableau << ARGV[index].chars
tableau << ARGV[index]
end
#puts tableau.inspect

#on determine sa longueur
# on boucle sur chaque  string en partant de la fin (index longueur-1)
# caractere par caractere,
# et ce pour chaque string (argument passé, en partant du dernier

#on affiche le resultat
index_string = tableau.length-1
while index_string != -1
    string = tableau[index_string]
    index_char = string.length
    while index_char != -1
        print "#{string[index_char]}"
        if index_char == 0
            print " "
        end
        index_char -= 1
    end
    index_string -= 1    
end 




