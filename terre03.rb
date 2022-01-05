=begin
******************** L’alphabet à partir de

Créez un programme qui affiche l’alphabet à partir de la lettre donnée en argument 
en lettres minuscules suivi d’un retour à la ligne.

Exemples d’utilisation :
$> python exo.py n
nopqrstuvwxyz
$>

Attention : votre programme devra utiliser une boucle.
=end

#puts "hello world !"

#recuperer l'argument passé a l'appel du programme
lettre_demandee = ARGV[0]
#initialiser un tableau des lettres de l'alphabet en minuscules
tableau = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
# trouver la correspondance de la lettre passée en argument dans le tableau
# des lettres de l'alphabet (boucler sur le tableau)
# en déduire l'index de depart de mon affichage des lettres ==> variable 'index'

for i in 0..(tableau.length)-1
    if tableau[i] == lettre_demandee
        index = i+1
    end
end
#puts index

# boucler sur le tableau a partir de l'index de depart
# et afficher les lettres
for i in index..(tableau.length)
    print tableau[i-1]
end
 
puts "\n"
