# Convert Military Time to Standard Time with AM/PM
# Ex. 1630 to 4:30PM

def convert(num)
  hour = num / 100 
  minute = num % 100
  period = 'AM'

  if (hour > 12)
    period = 'PM'
    hour -= 12
  end

  return hour.to_s + ':' + minute.to_s + period
end

puts convert(1630)
puts convert(1230)