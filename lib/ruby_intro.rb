# When done, submit this entire file to the autograder.

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

def starts_with_consonant? s
  return (s =~ /^[^aeiouAEIOU\W].*/)
end

def binary_multiple_of_4? s
  return s =~ /^[0-1]*0?0$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
