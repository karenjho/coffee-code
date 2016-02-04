# require 'byebug'

def luck_check(str)
  digits = str.length
  array = str.chars.map(&:to_i)

  midpoint = digits / 2

  front = array[0..(midpoint - 1)]

  if digits.even?
    back = array[midpoint..-1]
  else
    back = array[(midpoint + 1)..-1]
  end
  # byebug <= put in byebug wherever you want the code to stop so you can check it
  front_sum = front.inject(:+)
  back_sum = back.inject(:+)

  front_sum == back_sum
end

puts luck_check("003111")
puts luck_check("17935")
puts luck_check("12334")



# Patrick's solution
def luck_check2(str)
 numbers = str.split("").map { |num| num.to_i }
 numbers[0..((numbers.count / 2) - 1)].reduce(:+) == numbers[(-(numbers.count / 2))..-1].reduce(:+)
end
