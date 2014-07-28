def calc (input_sentence)
  broken_down_sentence = input_sentence.split
  number = []
  operators = {"+" => ["plus", "add", "sum"],
               "-" => ["minus", "subtract", "difference"],
               "*" => ["times", "multiply", "multiplied"],
               "/" => ["divided", 'divide'],
               "**" => ["power", "exponent"]
              }

  operator = ["+"]
  result = 0
  location = 0

  broken_down_sentence.each do |word|
    number_check = word.to_f
    if number_check > 0
      number << number_check
    end

    operators.each do |key, value|
      if value.include?(word)
        operator << key
      end
    end
  end

  number.length.times do
    result = result.send(operator[location],number[location])
    location += 1
  end
  result
end

puts calc("i want to add 19 and 9 and then divided by 2")
