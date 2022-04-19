require_relative "../lib/jm"

describe "test methode jm" do

    it "retourne une array avec le jour d'achat et le jour de vente" do
        expect(jm_method([17,2,6,15,1,5,9])).to eq([1,4])
        expect(jm_method([16,15,15,19,2,19,3,21])).to eq([4,8])
    end

end