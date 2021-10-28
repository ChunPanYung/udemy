# frozen_string_literal: false

# Write a longest_word method that accepts a string(sentence) as its only arguments.
# The method should return the longest word in the sentence

# If 2 words are tied for maximum length, the method should return the last word in the
# sentence with that length.

# You can assume:
# each word in the sentence is separated by a single space
# the sentence does not contain any symbols or characters, include punctuation.

words0 = 'the Seven Deadly Pudding'
words1 = 'Tanaka thai kick'

def longest_word(sentence)
  sentence = sentence.split

  # index and its string length
  # 0: index, 1: size
  index_len = [0, 0]
  sentence.each_with_index do |value, index|
    if value.size >= index_len[1]
      index_len[0] = index
      index_len[1] = value.size
    end
  end
  sentence[index_len[0]] # return
end

puts longest_word(words0)
puts longest_word(words1)
