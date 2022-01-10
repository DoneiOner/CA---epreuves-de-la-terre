#!usr/bin/env ruby

=begin
    

************************************ 24 to 12

    Créez un programme qui transforme une heure affichée en format 24h 
    en une heure affichée en format 12h.

Exemples d’utilisation :
$> ruby exo.rb 23:40
11:40PM

Attention : midi et minuit.

    


 recuperer argument en format 24h
 splitter les heures et les minutes

minuit : 12AM (midnight)                       ======> ex : 12:15 AM                   
de 01:00 à 11:59=> AM                          ==========>    afficher ARGV[0] + "PM"
midi  12PM (noon)  
de 12:01 à 12:59 => PM                         ===========>   afficher ARGV[0] + "PM"
de 13:00 à 23:59 => PM                        ===========> afficher ARGV[0] - 12 + "PM"


 afficher en format 12h
=end
saisie = "#{ARGV[0]}".tr(':',"")

if /\D/.match("#{saisie}")
    puts "Erreur."
    abort
end

 myArray = "#{ARGV[0]}".split(':', -1)

 #puts myArray.inspect

 heure_saisie = myArray[0].to_i
 minute_saisie = myArray[1].to_i
 
 #puts heure_saisie
 #puts minute_saisie

 case heure_saisie
    when 12
    then
    heure_saisie = 12
    sortie = "PM"
    when 13..23
        then
        heure_saisie -=12
        sortie = "PM" 
    when 0..11 
        then
        sortie = "AM"
    else
        puts "Erreur."
        abort
end

puts "#{heure_saisie}:#{minute_saisie}#{sortie}"