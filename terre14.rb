#!usr/bin/env ruby

=begin
    
**************************** Trié ou pas

    Créez un programme qui détermine si une liste d’entiers est triée ou pas.

Exemples d’utilisation :
$> ruby exo.rb 9 8 3
Pas triée !

$> ruby exo.rb 3 8 9 12
Triée !

$> ruby exo.rb “Salut”
erreur.

=end

# gerer les erreurs d'arguments ...
# ... et mettre les arguments dans un tableau
tableau = []
for index in 0..ARGV.length-1
    if /\D/.match("#{ARGV[index]}")
        puts "Erreur."
        abort
    end
    tableau << ARGV[index]
end


# parcourir le tableau
for index in 0...tableau.length-1
    if ( tableau[index] < tableau[index+1] )
        then
            condition = true
    else condition = false
    end
end

#puts condition.to_s

# Afficher Sortie

if condition == true
    then puts "Triée !"
else
    puts "Pas triée !"
end