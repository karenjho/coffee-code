## Step One: Displaying phone numbers

Write a method that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

Example:
create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
=> returns "(123) 456-7890"


# PROTIP: Do not forget the space after the closing parenthesis!

array = (1..9).to_a
array << 0

# Patrick's answer

def phone_num(array)
  "( #{array(0..2).join}) #{array(3..5).join}-#{array(6..9).join}"
end

puts phone_num(array)

# Filip's answer

def create_phone_number(array)
  phone_number = ""

  array.each_with_index do |number, index|
    case
    when index == 0
      phone_number << "("
    when index == 3
      phone_number << ")"
    when index == 6
      phone_number << "-"
    end
    phone number << number.to_s
  end

  phone_number
end

puts create_phone_number(array)


## Step 2: Narcissistic Numbers

A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits.

For example, take 153 (3 digits):

    1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

and 1634 (4 digits):

    1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

The Challenge:

Your code must return true or false depending upon whether the given number is a Narcissistic number.

Error checking for text strings or other invalid inputs is not required, only valid integers will be passed.

# return true or false

# Karen's answer
def narcissistic?(number)
  # number_array = number.to_s.split("").map { |num| num.to_i }
  number_array = number.to_s.chars.map(&:to_i) # <= Stuart's code for my crazy code above
  digits = number.to_s.length

  narcissistic = number_array.inject(0) do |sum, n|
    sum + (n ** digits)
  end

  narcissistic == number
end

# Tanner's answer
def narcissistic?(number)
  digits = number.to_s.length
  sum = 0

  digits.times do |i|
    sum += number.to_s[i].to_i**digits
  end

  sum == number
end
