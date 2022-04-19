def max_after(liste,indice)
  r_list = liste[indice+1..-1]
  value_p = liste[indice]
  max_f = r_list.max
  return [r_list.find_index(max_f) + indice + 1, max_f - value_p]
end

def array_day_gain (liste)
  return liste[0..-2].map.with_index {|_,i| max_after(liste,i)}
end

def day_trader(liste)
  analysis_liste = array_day_gain(liste)
  analysis = analysis_liste.sort {|a,b| b[1] <=> a[1]}.first
  buy_day = analysis_liste.find_index(analysis)
  sell_day = analysis.first
  gain = analysis.last
  return [buy_day,sell_day]
end

def day_trader_SUPERSTAR(liste)
  analysis_liste = array_day_gain(liste)
  analysis = analysis_liste.sort {|a,b| b[1] <=> a[1]}.first
  buy_day = analysis_liste.find_index(analysis)
  sell_day = analysis.first
  gain = analysis.last
  return "Il faut acheter au jour #{buy_day} et vendre au jour #{sell_day}. Tu te feras un gain (ou pas) de #{gain}."
end