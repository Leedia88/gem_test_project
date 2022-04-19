# Multiple 3 et 5 

def sum_of_3_or_5_multiples(final_number)
    final_sum = 0 
    if final_number.to_s.to_i != final_number || final_number < 0
      return "Je ne prends que des entiers naturels"
    end
  
    for current_number in (0..final_number-1)
      if is_multiple_of_3_or_5(current_number)
        final_sum += current_number
      end
    end 
    return final_sum 
  end

def is_multiple_of_3_or_5(num)
    num%3 == 0 || num%5 ==0
end
