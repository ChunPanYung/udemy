# frozen_string_literal: false

# method that emaulate numbers.uniq
def custom_uniq(array)
  return array if array.size < 2

  return_array = []
  array.sort!
  array.each_with_index do |value, index|
    return_array.push(value) if value != array[index - 1]
  end
  return_array
end

numbers0 = [1, 2, 3, 2, 7, 7, 8, 9, 1]
numbers1 = [0, 2, 0, 2, -7, -7, 8, -9, 1, 100, 20_000, 20_000, 20_000, 0, -7]

p numbers0.uniq.sort == custom_uniq(numbers0).to_a
p numbers1.uniq.sort == custom_uniq(numbers1).to_a
