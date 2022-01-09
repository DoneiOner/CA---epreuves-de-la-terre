#!usr/bin/env ruby

=begin 
************************* Nombre premier
    
Créez un programme qui affiche si un nombre est premier ou pas.

Exemples d’utilisation :
$> node exo.js 5
Oui, 5 est un nombre premier.

$> node exo.js 6
Non, 6 n’est pas un nombre premier.

Attention : 0 et 1 ne sont pas des nombres premiers. Gérez les erreurs d’arguments.
    
=end

# nombre premier : divisible seulement par lui meme et par 1
# conditions: divisé par 
# divisé par autre chose : le quotient n'est pas un entier

#un nombre non premier peut etre divisé par autre chose que lui meme et 1
#=>idee : boucler de 2 au nombre saisi , si le resultat de la division 
#peut etre un int different de 1 ou du nombre saisi : ce n'est pas un nombre premier
# (cad si nombre a tester / nombre de la boucle = > 
# donne un int autre que 1 ou le nombre a tester, sans reste modulo
# ou avec un reste modulo)
nombre_a_tester = ARGV[0]

if  /\D/.match("#{nombre_a_tester}") || ARGV[0] == nil
    puts "erreur."
    abort
end


if nombre_a_tester.to_i == 1 || nombre_a_tester.to_i == 0 
    puts "Non, #{nombre_a_tester} n'est pas un nombre premier." 
end

nombre_a_tester = nombre_a_tester.to_i

for nombre in 2..nombre_a_tester do 
    resultat_division = nombre_a_tester / nombre
    modulo = nombre_a_tester % nombre
        if ((resultat_division.is_a? Integer) && (nombre != (nombre_a_tester))) 
            then    
                if (modulo.to_f == 0.0)
                    then
                puts "Non, #{nombre_a_tester} n'est pas un nombre premier."
                abort
                end
            else
                puts "Oui, #{nombre_a_tester} est un nombre premier." 
        end 
end


