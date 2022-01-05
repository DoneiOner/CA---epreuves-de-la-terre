#!usr/bin/env ruby

=begin
Créez un programme qui affiche les arguments qu’il reçoit ligne par ligne, 
peu importe le nombre d’arguments.

Exemples d’utilisation :
$> ruby exo.rb je suis solide !
je
suis
solide
!
=end

#puts "Hello World !"

# stocker les arguments reçus a l'appel au programme
# d'abord je vais tester si ARGV me capture un argument passé en LDC 
# a l'appel du programme:
# puts ARGV[0]
#puts ARGV.inspect
# oui, l'argument passé est bien stocké sous forme de string dans le tableau ARGV
# je n'ai plus qu'a boucler sur le tableau ARGV et a afficher
ARGV.each do |argument|
    puts argument
end




# et a afficher les arguments
