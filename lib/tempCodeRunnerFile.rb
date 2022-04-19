
def day_trader(liste)
  analysis_liste = array_day_gain(liste)
  return analysis_liste.sort {|analysis| analysis[a]<=> analysis[a]}.first
end

puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])