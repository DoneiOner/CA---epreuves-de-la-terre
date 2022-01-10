#!usr/bin/env ruby

=begin
    ************************************* 12 to 24
    
    Créez un programme qui transforme une heure affichée en format 12h en une heure affichée au format 24h.


Exemples d’utilisation :
$> ruby exo.rb 11:40PM
23:40

Attention : midi et minuit.

end

 recuperer argument en format 24h
 splitter les heures et les minutes

minuit : 12AM (midnight)                       ======> ex : 12:15 AM                   
de 01:00 à 11:59=> AM                          ==========>    afficher ARGV[0] + "PM"
midi  12PM (noon)  
de 12:01 à 12:59 => PM                         ===========>   afficher ARGV[0] + "PM"
de 13:00 à 23:59 => PM                        ===========> afficher ARGV[0] - 12 + "PM"


 afficher en format 12h
=end


# ***** INITIALISATION DES VARIABLES
saisie = "#{ARGV[0]}".tr(':',"")
#puts saisie.inspect

 myArray = "#{ARGV[0]}".split(':', -1)
 #puts myArray.inspect
 
 heure = myArray[0].to_i
 minute = myArray[1].to_i
 heure = heure.to_i
 minute = minute.to_i
 #puts heure
 #puts minute

 minutes_et_indicateur = myArray[1].to_s
 #puts minutes_et_indicateur
 AM_ou_PM = minutes_et_indicateur.match(/(.{0,#{2}}$)/)
 #puts AM_ou_PM.to_s


 # ***** GESTION DES ERREURS D'ARGUMENTS PASSÉS
 
if /\D/.match("#{heure}")
    puts "Erreur.."
    abort
end

if /\D/.match("#{minute}")
    puts "Erreur.."
    abort
end

if heure == 00
    puts "erreur ."
    abort
end

#puts AM_ou_PM.to_s

 case AM_ou_PM.to_s

    when "AM"                ## 12:15AM c'est minuit et quart
        then if heure ==12
            then
                heure = "00" 
        else 
            heure = heure
        end                           #=====> on ne change pas l'heure , de 00:01AM à 11:59

    when "PM" ,  (heure == 12)               # =====> 12:15PM c'est midi et quart
        then if heure == 12 
            then
                 heure = 12
        else 
            heure += 12
        end
    else
        puts "Erreur..."
end

if heure.to_i >= 24 then 
    puts "Erreur."
    abort
end

puts "En Français : #{heure.to_s}h#{minute.to_s}"
