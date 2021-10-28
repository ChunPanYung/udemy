# frozen_string_literal: false

names = %w[Joe Moe Bob]
food = %w[Pudding Donut Sandwiches Vegetables]

def custom_join(array, delimiter = '')
  # take the array and concatenate its string elements
  # together.  Return that final string.
  string = ''
  last_index = array.size - 1
  array.each_with_index do |value, index|
    string << if index != last_index
                value + delimiter
              else
                value
              end
  end
  string # return
end

puts custom_join(names)
puts custom_join(names, '%')
puts custom_join(names, ' ')

puts custom_join(food)
puts custom_join(food, '%--%')
puts custom_join(food, '&')

