# frozen_string_literal: false

fact = 'I am very handsome.'

def custom_index(string, substring)
  # return nil if substring not found in string
  # return index position of substring if found in string
  substring_size = substring.size

  string.each_char.with_index do |char, index|
    return index if char == substring[0] &&
                    string[index, substring_size] == substring
  end
  nil # return
end

puts fact

puts custom_index(fact, 'I').zero?
puts custom_index(fact, 'h') == 10
puts custom_index(fact, 'z').nil?
puts custom_index(fact, 'am') == 2
