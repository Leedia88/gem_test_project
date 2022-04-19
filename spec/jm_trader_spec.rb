require_relative "../lib/jm_trader"

describe "Renvoie le jour d'achat, de vente et le gain" do
  it "Retourne l'indice et le gain max apres l'indice d'entree" do
    expect(max_after([17, 3, 6, 9, 15, 8, 6, 1, 10],1)).to eq([4,12])
    expect(max_after([17,2,9,11,15,3,6,2],1)).to eq([4,13])
    expect(max_after([17,2,9,11,15,3,6,2],3)).to eq([4,4])
    expect(max_after([17,2,9,11,15,3,6,2],4)).to eq([6,-9])
    expect(max_after([17, 3, 6, 9, 15, 8, 6, 1, 10],1)).to eq([4,12])
  end
end

describe "Renvoir pour chaque jour le jour ideal d'achat et le gain max" do
  it "Retourne une liste de couple Jour de Vente / Gain" do
    expect(array_day_gain([17,2,9,11,15,3,6,2])).to eq([[4,-2],[4,13],[4,6],[4,4],[6,-9],[6,3],[7,-4]])
    end
end

describe "recupere une liste de prix par jour et renvoir le jour d'achat et de vente ideale" do
  it "Retourne le couple buy day / sell day avec prix random" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
    expect(day_trader([17,2,9,11,15,3,6,2])).to eq([1,4])
    expect(day_trader([1,10,50,90])).to eq([0,3])
  end

  it "Retourne le couple buy/sell day minimisant les pertes" do
    expect(day_trader([100,80,60,50])).to eq([2,3])
    expect(day_trader([100,99,98,98])).to eq([2,3])
  end
end

