# create a ROMAN_NUM hash
ROMAN_NUM = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000
}

def roman_to_int(string)
  sum = 0
  roman_numbers = string.chars
  # convert each roman_number to integer and store in an array
  numbers_value = roman_numbers.map { |num| ROMAN_NUM[num] }

  numbers_value.each_with_index do |num, index|
    # compare each integer with the next one, except the last integer
    if !numbers_value[index + 1].nil? && num < numbers_value[index + 1]
      # 'IV' = sum - 'I' + 'V'
      sum -= num
    else
      sum += num
    end
  end
  sum
end

# p roman_to_int('III')
# p roman_to_int('LVIII')
# p roman_to_int('MCMXCIV')
