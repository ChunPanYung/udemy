# frozen_string_literal: false

def fizzbuzz(number)
  # if the number is divisble by 3, output 'Fizz'
  # if the number is divisble by 5, output 'Buzz'
  # if the number is divisble by both 3 and 5, output 'Fizzbuzz'

  # output number
  puts "Enter number: #{number}"

  # early return
  return if number.zero?
  return puts 1 if number == 1

  _fizzbuzz(number)

  # iterate from 1 up to that number
  index = 1
  while index <= number
    puts index
    index += 1
  end

  puts # emtpy line
end

private

def _fizzbuzz(number)
  # output depends on divisibility
  if (number % 3).zero?
    print 'Fizz'
    puts ((number % 5).zero? ? 'buzz' : '')
  elsif (number % 5).zero?
    puts 'Buzz'
  end
end

fizzbuzz(3)
fizzbuzz(5)
fizzbuzz(15)
fizzbuzz(1)
fizzbuzz(0)
fizzbuzz(-100)
fizzbuzz(20)
fizzbuzz(18)
fizzbuzz(30)
