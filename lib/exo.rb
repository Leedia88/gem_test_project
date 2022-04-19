# Multiple 3 et 5 

def sum_of_3_or_5_multiples(num)
    if num.is_a? Integer
        if num>= 0
            sum = 0
            for i in (1..num - 1) 
                is_multiple_of_3_or_5(i) ? sum += i : sum
            end
            return sum
        else
            return "Je ne prends que des entiers naturels"
        end
        else
            return "Je ne prends que des entiers naturels"
    end
end

def is_multiple_of_3_or_5(num)
    num%3 == 0 || num%5 ==0
end

puts "abc".is_a? Integer
