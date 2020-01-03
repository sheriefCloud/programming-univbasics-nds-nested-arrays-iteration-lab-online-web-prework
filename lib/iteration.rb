def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
statements = []
  row_index = 0
  while row_index < src.count do
    ingredinets = []

    element_index = 0
    while element_index < src[row_index].count do
      ingredinets[element_index] = src[row_index][element_index]
      element_index += 1
    end
    statements << "I love " + ingredinets[0] + " and " + ingredinets[1] + " on my pizza"
    row_index += 1
  end

return statements

end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  array = []
row_index = 0

while row_index < src.count do
  inner = []
  element_index = 0
  while element_index < src[row_index].count do
    inner << src[row_index][element_index]
    element_index += 1
  end

  array << inner.max
  row_index += 1

end

array

end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  even_sum = 0
  row_index = 0

  while row_index < src.count do
    inner = []
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][element_index]%2 == 0
        inner << src[row_index][element_index]
      end
      element_index += 1
    end
      if inner.size == 2
        even_sum = inner[0] + inner[1] + even_sum
    end

    row_index += 1

  end
  even_sum

end
