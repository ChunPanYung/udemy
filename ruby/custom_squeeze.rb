# frozen_string_literal: false

sentence = 'Thhe      aardvark   jummped ovver the fence!  '

# remove character that's duplicated and adjancent to each other
def custom_squeeze(string)
  array = string.chars

  array.each_with_index do |_value, index|
    array.delete_at(index + 1) while array[index] == array[index + 1]
  end
  array.join # return
end

puts custom_squeeze(sentence)
