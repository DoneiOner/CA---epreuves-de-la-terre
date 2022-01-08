#!usr/bin/env ruby

=begin
    **************************** Puissance d’un nombre

    Créez un programme qui affiche le résultat d’une puissance.

L’exposant ne pourra pas être négatif.

Exemples d’utilisation :
$> node exo.js 2 3
8

Attention : je compte sur vous pour gérer les potentielles erreurs d’arguments.
=end

nombre1 = ARGV[0]
nombre2 = ARGV[1]
#puts nombre1
#puts nombre2


if  /\D/.match("#{nombre1}") || /\D/.match("#{nombre2}")
    puts "erreur."
    abort
end

if nombre2.to_i < 0
    puts "erreur."
    abort
end

puts nombre1.to_i ** nombre2.to_i


