# frozen_string_literal: true

# custom array method similar to arr.first() and arr.last(),
# providing that arr is an array.

arr = [1, 3, 5, 7, 9, 15, 21, 18, 6]

def custom_first(arr, num = 0)
  if num.zero?
    arr[0]
  elsif num > arr.size
    arr
  else
    arr[0...num]
  end
end

def custom_last(arr, num = 0)
  if num.zero?
    arr[-1]
  elsif num > arr.size
    arr
  else
    arr[(arr.size - num)...(arr.size)]
  end
end

p custom_first(arr)
p custom_last(arr)
p custom_first(arr, 3)
p custom_first(arr, 3)
p custom_last(arr, 5)
p custom_last(arr, 5)
p custom_last(arr, arr.size)
p custom_last(arr, arr.size)
p custom_last(arr, arr.size + 1)
p custom_last(arr, arr.size + 1)
p custom_last(arr, arr.size - 1)
p custom_last(arr, arr.size - 1)
