def largest_palindrome_made_from_productof_3_digit_numbers
  largest = 0
  999.downto(100).each { |multiplier|
    multiplier.downto(100).each { |multiplicand|
      product = multiplier * multiplicand
      largest = (is_palindrome product) && (product > largest) ? product : largest
    }
  }
  largest
end

def is_palindrome number
  number.to_s.reverse == number.to_s
end

puts largest_palindrome_made_from_productof_3_digit_numbers
puts largest_palindrome_made_from_productof_3_digit_numbers == 906609