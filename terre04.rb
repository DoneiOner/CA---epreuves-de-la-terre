#!usr/bin/env ruby

=begin
    ************************** Pair ou impair
    Créez un programme qui permet de déterminer si l’argument donné 
    est un entier pair ou impair..

Exemples d’utilisation :
$> ruby exo.rb 2
pair

$> ruby exo.rb 5
impair

$> ruby exo.rb Bonjour
Tu ne me la mettras pas à l’envers.

$> ruby exo.rb
Tu ne me la mettras pas à l’envers.

Attention : gérez aussi les entiers négatifs.
   
=end
#def is_numberic?(str)
 #   str == "#{str.to_f}" || str == "#{str.to_i}"
#end

puts ARGV.inspect
#recuperer l'argument
saisie = ARGV[0]
#puts saisie
# effacer le caractere special "-" de la string saisie pour autoriser 
# les entiers negatifs dans ma Regex
saisie = "#{saisie}".tr('-',"")
#tester s'il y a autre chose que des purs entiers dans la string
# (un float est forcement impair, il est juste de ne pas autoriser la saisie d'un float)
# (/\D/ signifie : un caractere non numerique)
if /\D/.match("#{saisie}") 
    then 
        puts "tu ne me la mettras pas a l'envers"
        abort
end
# tester la parité du nombre
nombre = saisie.to_i
if nombre % 2 == 0
    puts "pair"
else
    puts "impair"
end