# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? 
    return false if n == 0
  else
    arr.combination(2).to_a.each do |pair| 
      return true if sum(pair) == n 
    end 
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  consonants = /^[^aeiou\d\W_]/i
  return true if consonants.match(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  /^[01]+$/.match(s) && s.to_i(2) % 4 == 0 ? true:false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
  end

  attr_reader :isbn, :price

  def isbn=(isbn)
    fail ArgumentError, 'Every book must have ISBN code number.' if isbn.empty?
    @isbn = isbn
  end

  def price=(price)
    fail ArgumentError, 'Every book must have price value.' unless price > 0
    @price = price
  end

  def price_as_string
    format '$%.2f', @price
  end
end