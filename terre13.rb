#!usr/bin/env ruby

=begin
    ************************* Trouver la Suisse (lol)

    Créez un programme qui prend en paramètre trois entiers et affiche la valeur du milieu.

Exemples d’utilisation :
$> ruby exo.rb 11 40 34
34

$> ruby exo.rb 2 1 3
2

$> ruby exo.rb 2 2 2
erreur.

=end




# verifier mauvais arguments

if /\D/.match("#{ARGV[0]}") || /\D/.match("#{ARGV[1]}") || /\D/.match("#{ARGV[2]}")
    puts "tu pensais me la mettre?"
    abort
end

# recuperer les arguments
# mettre les arguments dans un tableau

tableau = [ ARGV[0], ARGV[1], ARGV[2] ]
puts tableau.inspect

a = tableau[0].to_i
b = tableau[1].to_i
c = tableau[2].to_i
# comparer les arguments
if          ( a < b && b < c ) || ( a > b && b > c )
    then 
    result = b
elsif       ( b < a && a < c ) || ( b > a && a > c)
    then 
    result = a
elsif       ( a < c && c < b ) || ( a > c && c > b)
    then 
    result = c    
else
    puts "Erreur."
    abort
end
    
puts "#{result}"


# si 2 ou plus arguments identiques => erreur

# afficher la valeur du milieu