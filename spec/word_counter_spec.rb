require_relative "../lib/word_counter"

describe "Retourne le nombre d'occurence d'un mot dans une phrase" do
  it "Donne le nombre d'apparition du mot" do
    expect(count_occurence("Jean va avec Jeannot","Jean")).to  eq(2)
    expect(count_occurence("Jean va avec Jeannot","a")).to  eq(4)
    expect(count_occurence("Jean va avec Jeannot","zoulou")).to  eq(0)
  end

  it "Renvoie la distribution de mots dans la phrase" do
    expect(word_counter("below", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to eq({"below"=>1, "low"=>1})  
    expect(word_counter("Howdy partner, sit down! How's it going?", ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})  
  end
end

describe "Shakespear ta mere" do
  it "" do
      expect(shakespeare_word_counter()).to  eq({"the"=>951, "of"=>425, "and"=>525, "to"=>536, "a"=>4830, "in"=>1249, "for"=>305, "is"=>574, "on"=>599, "that"=>285, "by"=>113, "this"=>117, "with"=>184, "i"=>4666, "you"=>280, "it"=>504, "not"=>189, "or"=>824, "be"=>458, "are"=>136})
  end
end 