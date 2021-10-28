# frozen_string_literal: false

# [1, 2, 3, 4, 5]
# Write a loop that gives a sum of
# the products of each index and its value
# i.e. [key0 * value0] + [key1 * value1] + ...

arr = [1, 2, 3, 4, 5]
sum = 0

arr.each_with_index do |value, key|
  sum += value * key
end

puts sum

# [-1, 2, 1, 2, 5, 7, 3]
# print the product of the element and its index position
# if the index position is greater than the element
# Create this within a method

arr = [-1, 2, 1, 2, 5, 7, 3]

def print_if(array)
  array.each_with_index do |value, key|
    if key > value
      puts "index #{key} is greater than #{value}"
      puts "The result of multiplication is #{key * value}"
    end
  end
end

print_if(arr)
