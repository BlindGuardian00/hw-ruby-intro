# When done, submit this entire file to the autograder.
#Programmer: Daniel Mitchell
#Class: CS3300
#Due: 4-18-2021
#Assignment: Iteration 2, extra credit

# Part 1

#returns the sum of integers contained in the array arr
def sum arr
  total_sum = 0
  for i in arr
    total_sum += i
  end
  return total_sum
end

def max_2_sum arr
   #sorting arr greatest to least
   arr_sorted = arr.sort.reverse
   #greatest value is the first element of arr_sorted as long as
   #the array has length at least 1; otherwise, we set the value to zero
   largest = (arr.length > 0) ? arr_sorted[0]: 0
   #second greatest value is the second element as long as the array
   #has at least length 2; otherwise, we set that value to zero
   second_largest = (arr.length > 1) ? arr_sorted[1]: 0
   return largest + second_largest
end

#Returns a bool telling whether the array arr contains two
#distinct values that sum to n (that is, values in distinct
#array positions, even if two values repeat in the array)
def sum_to_n? arr, n
  two_sum_to_n = false
  for i in 0...arr.length
    for k in 0...arr.length
      two_sum_to_n = true if (arr[k] + arr[i] == n && k != i)
    end
  end
  return two_sum_to_n
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

#returns a bool telling whether the string
#s starts with a consonant
def starts_with_consonant? s
  return (s =~ /^[^aeiouAEIOU\W].*/)
end

#returns a bool telling whether the
#string passed in was (1) a valid
#binary number and (2) a multiple of
#4 (which occurs precisely when the
#two least significant digits are both 0)
def binary_multiple_of_4? s
  return s =~ /^[0-1]*0?0$/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError unless (isbn.class == String && isbn != "")
    @isbn = isbn
    raise ArgumentError unless (price > 0)
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price

  #returns a string with the format $\d+.\d\d
  #where \d refers to any digit, and the above is
  #written as a regular expression; i.e., it is
  #any number followed by a decimal point and two
  #digits.
  def price_as_string
    "$#{"%0.2f" % price}"
  end


end
