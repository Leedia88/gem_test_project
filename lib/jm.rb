def jm_method(liste)

    # on parcours la liste
    # pour chaque jour on détermine :
        #le jour de vente meilleur
        #le gain associé
    #on sélectionnne le meilleur gain 
    #on prend le jour de vente
    fin = liste.length
    j_vente = [] 
    gain = []
    for i in 0..fin-2 do
        # puts "indice #{i}"
        # puts "valeur max #{liste[i+1..fin].max}"
        # puts "index jour vente #{liste.index(liste[i+1..fin].max)}"
        j_vente[i] = liste.index(liste[i+1..fin].max) + 1
        # puts j_vente[i]
        gain[i] = liste[i+1..-1].max - liste[i].to_i
        # puts "gain du jour #{i+1} : #{gain[i]}"
    end

    # p j_vente
    # p gain
    # p [gain.index(gain.max), j_vente[gain.index(gain.max) + 1]]

    return [gain.index(gain.max) , j_vente[gain.index(gain.max) + 1]]

end
