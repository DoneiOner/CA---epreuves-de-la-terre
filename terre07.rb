#!usr/bin/env ruby

=begin
************************ Taille d’une chaîne

Créez un programme qui affiche le nombre de caractères d’une chaîne de caractères passée en argument.

Exemples d’utilisation :
$> python exo.py “Hello world!”
12

$> python exo.py
erreur.

$> python exo.py “Bonjour” “Aurevoir”
erreur.

$> python exo.py 10
erreur.

=end

string = ARGV[0]

puts string.inspect

#gestion des erreurs d'entree utilisateur
if ARGV[0] == nil 
    puts "erreur."
    abort 
end

if ARGV[1] != nil
    puts "erreur."
    abort
end

if ARGV[0].to_i.to_s == ARGV[0]
    puts "erreur."
    abort 
end

#affichage : 
puts string.length