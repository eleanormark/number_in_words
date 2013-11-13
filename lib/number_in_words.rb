def whole_number_in_words(number)
 number == 0 ? 'zero' : natural_number_in_words(number).chomp(" ")
end

def natural_number_in_words(number)

  ones = { 0 => '',
           1 => 'one ',
           2 => 'two ',
           3 => 'three ', 
           4 => 'four ',
           5 => 'five ',
           6 => 'six ',
           7 => 'seven ',
           8 => 'eight ',
           9 => 'nine '
         }

  teens = {  0 => '',
            10 => 'ten ',
            11 => 'eleven ',
            12 => 'twelve ',
            13 => 'thirteen ',
            14 => 'fourteen ',
            15 => 'fifteen ',
            16 => 'sixteen ',
            17 => 'seventeen ',
            18 => 'eighteen ',
            19 => 'nineteen ' }

  tens = {  0 => '',
           20 => 'twenty ',
           30 => 'thirty ',
           40 => 'forty ',
           50 => 'fifty ',
           60 => 'sixty ',
           70 => 'seventy ',
           80 => 'eighty ',
           90 => 'ninety ' }

  others = { 0 => '',
             2 => 'hundred ',
             3 => 'thousand ',
             6 => 'million ',
             9 => 'billion ',
            12 => 'trillion ',
            15 => 'quadrillion '}
  words = ''

  if number == 0
    words
  else
    power = number.to_s.length - 1
    power = power % 3 == 1 ? power - 1 : power
    power = power % 3 == 2 ? power - 2 : power

    current_part_ones = 0
    current_part_tens = 0
    current_part_teens = 0
    current_part_hundreds = 0
    current_number = number / 10**power
    current_part_hundreds = current_number / 100
    hundred_on = current_part_hundreds > 0 ? 2 : 0
 
  if current_number % 100 < 10
    current_part_ones = current_number % 10
    current_number -= current_part_ones
   end
  
  if current_number % 100 >= 20 
    current_part_ones = current_number % 10
    current_part_tens = current_number % 100 - current_part_ones
    current_number -= current_part_ones
    end

  if current_number % 100 >= 10 and current_number % 100 < 20
    current_part_teens = current_number % 100
    current_number -= current_part_teens
  end

  remainder = number - (current_number + current_part_ones + current_part_teens) * 10** power
  words += ones[current_part_hundreds] + others[hundred_on] + teens[current_part_teens] + tens[current_part_tens] + ones[current_part_ones] + others[power] + natural_number_in_words(remainder)
  end
end





