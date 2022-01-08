#!usr/bin/env ruby

=begin
      ******************* Racine carrée d’un nombre
  
Créez un programme qui affiche la racine carrée d’un entier positif.

Exemples d’utilisation :
$> node exo.js 9
3

Attention : je compte sur vous pour gérer les potentielles erreurs d’arguments.

=end

nombre1 = ARGV[0]

#puts nombre1
if  /\D/.match("#{nombre1}")
    puts "erreur."
    abort
end

if ARGV[1] != nil
    puts "erreur."
    abort
end

puts Math.sqrt(nombre1.to_i)
