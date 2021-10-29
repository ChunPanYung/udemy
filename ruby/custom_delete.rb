# frozen_string_literal: false

# method that mimics the functionality of string.delete('')

def custom_delete(string, characters)
  array = characters.chars
  return_array = []

  string.chars.each_with_index do |element, index|
    is_include = false
    array.each do |char|
      is_include = true if element == char
    end
    return_array.push(string[index]) unless is_include
  end
  return_array.join
end

puts custom_delete('I love Pudding', 'I')
puts custom_delete('I love Pudding', ' ')
puts custom_delete('I love Pudding', 'dI')
puts custom_delete('Arrow to the knees', 'Aer')
puts custom_delete('Arrow to the knees', '')
