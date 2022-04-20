require_relative "../lib/caesar_cipher"

describe "retourne une phrase déchiffrée" do
    
    it "retourne des une phrase simple" do
        expect(cipher("WHAT", 5)).to eq("BMFY")
        expect(cipher("What a string!", 5)).to eq("Bmfy f xywnsl!") do
        expect(cipher("What a string!")).to eq("What a string!")
        end
    end



end


describe  "conversion majuscule" do

    it "convertir_ascii_maj" do
        expect(convertir_ascii_maj("W", 5)).to eq("B")
        expect(convertir_ascii_maj("W", 10)).to eq("G")
        expect(convertir_ascii_maj("B", -5)).to eq("W")
        expect(convertir_ascii_maj("O", 3)).to eq("R")
        expect(convertir_ascii_maj("O", -5)).to eq("J")
    end

end


describe  "conversion mminuscule" do

    it "" do
        expect(convertir_ascii_min("w", 5)).to eq("b")
        expect(convertir_ascii_min("w", 10)).to eq("g")
        expect(convertir_ascii_min("w", -5)).to eq("r")
        expect(convertir_ascii_min("o", 3)).to eq("r")
        expect(convertir_ascii_min("o", -5)).to eq("j")

    end

end


    
end
