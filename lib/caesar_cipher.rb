

def cipher(str, num=0)
    letters = str.chars

    letters.map! do |letter|
        case letter
        when /[a-z]/
            convertir_ascii_min(letter, num)
        when /[A-Z]/
            convertir_ascii_maj(letter, num)
        else 
            letter
        end
    end
    return letters.join
end


def convertir_ascii_maj(letter, num)
    ord_min = 65
    ord_max = 90
    alphabet = ord_max - ord_min + 1
    num <= 0 ? num += alphabet : num
    return (letter.ord + num) >= ord_max ? (letter.ord + num - alphabet).chr : (letter.ord + num).chr
end

def convertir_ascii_min(letter, num)
    ord_min = 97
    ord_max = 122
    alphabet = ord_max - ord_min + 1
    num <= 0 ? num += alphabet : num
    return (letter.ord + num) >= ord_max ? (letter.ord + num - alphabet).chr : (letter.ord + num).chr
end


