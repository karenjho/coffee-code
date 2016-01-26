##### Exercise 1
# Write a method to find the longest word in a given array

animals = %w(cow chicken sheep)
names = %w(Joseph Cathy Charles Priscilla)

# def find_longest(array)
#   array.inject(array[0]) { |longest, word|
#     word.size > longest ? word : longest
#   }
# end
#
# puts find_longest(animals)
#
# def find_longest_two(array)
#   array.sort!([0])
# end
#
# puts find_longest2(animals)

def find_longest_three(array)
  array.max { |longest, word|
    longest.length <=> word.length
  }
end

puts find_longest_three(animals)
puts find_longest_three(names)


##### Exercise 2
# Multiply the numbers in the array

numbers = (0..7).to_a.map { |num| 12**num }
puts numbers

# Method 1

def multiply_array(array)
  array.inject(1) { |product, num|
    product * num
  }
end

puts multiply_array(numbers)

# Method 2

puts numbers.inject(:*)

#### Exercise 3
# Array to Hash, without clobbering! (i.e. no duplicates)

# animals_again = [["dogs", 4], ["cats", 3], ["dogs", 7]]

# Method 1

# animals_hash = {}

# def hash_no_clobber(array)
#   animals.each do |key, value|
#     duplicate_key = false
#     animals_hash.each do |a_key, a_value|
#       if key == a_key
#         animals_hash[key] += value
#         duplicate_key = true
#       end
#     end
#     unless duplicate_key
#       animals_hash[key] = value
#     end
#   end
# end

# Method 2

animals_hash = {}
animals_again = [["dogs", 4], ["cats", 3], ["dogs", 7]]
animals_again.each do |animal_name, animal_count|
  # if animals_hash.has_key?(animal_name)
  if animals_hash[animal_name]
    animals_hash[animal_name] += animal_count
  else
    animals_hash[animal_name] = animal_count
  end
end

puts animals_hash
