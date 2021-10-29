# frozen_string_literal: false

def custom_compact(array)
  return_array = []
  array.each do |value|
    return_array << value unless value.nil?
  end
end

sports = ['baseball', nil, 'football', nil, nil, 'soccer']
food = ['pudding', nil, nil, nil, 'donut', 'muffin', nil, 'crossiant', nil, nil]

puts sports.compact == custom_compact(sports)
puts food.compact == custom_compact(food)
