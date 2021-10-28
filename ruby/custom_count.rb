# frozen_string_literal: false

def custom_count(string, search_characters)
  # return the number of total times that
  # the search characters are in the string
  count = 0
  find_chars = search_characters.split('')

  string.each_char do |char|
    find_chars.each do |find|
      if char == find
        count += 1
        break
      end
    end
  end
  count # return
end

puts custom_count('Heelow', 'e')

puts custom_count('Pudding', 'P') == 'Pudding'.count('P')
puts custom_count('Godly Pudding', 'Pdi') == 'Godly Pudding'.count('Pdi')
puts custom_count('I love donut', '') == 'I love donut'.count('')
