numbers = [*500..5000]
palindromic_numbers = []

numbers[0..25].each do |number|
    total_integer = number + number.digits.join.to_i
    total_digits = total_integer.digits

    if total_digits.first == total_digits.last && total_integer > 1000
      palindromic_numbers << number
    end
  end
  
puts palindromic_numbers
