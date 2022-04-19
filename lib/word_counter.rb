def word_counter(sentence,dictionnary)
  word_hash = Hash.new
  for dico_word in dictionnary
    word_hash[dico_word] = count_occurence(sentence,dico_word)
  end
  return word_hash.select {|key,value| value != 0}
end

def count_occurence (sentence,word)
  sentence = sentence.downcase
  word = word.downcase
  index_first_letter = sentence.index(word[0])

  if index_first_letter.nil? || sentence.size < word.size
    return 0
  elsif sentence[index_first_letter...index_first_letter + word.size] == word
    return 1 + count_occurence(sentence[index_first_letter+1..-1],word)
  else
    return count_occurence(sentence[index_first_letter+1..-1],word)
  end
end