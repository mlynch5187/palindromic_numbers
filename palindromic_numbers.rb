class Palindrome

  def initialize
    @numbers = [*50..5000]
    @palindromic_numbers = []
  end

  def find_palindrome
    @numbers[0..25].each do |number|
      if number.digits.join.to_s != number.to_s
        total_integer = number + number.digits.join.to_i
        total_digits = total_integer.digits

        if total_digits.first == total_digits.last && total_integer > 100
          @palindromic_numbers << number
        end
      end
    end
  end
end
