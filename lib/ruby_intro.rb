# frozen_string_literal: true

# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each do |i|
    sum += i
  end
  sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr = arr.sort
  arr = arr.reverse
  # print arr
  sum += arr[0] if arr.length.positive?
  sum += arr[1] if arr.length > 1
  sum
end

def sum_to_n?(arr, num)
  return false if arr.length <= 1

  # print arr
  # puts n
  (0..arr.length - 1).each do |i|
    (i + 1..arr.length - 1).each do |j|
      # print i, j
      return true if arr[i] + arr[j] == num
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  print s
  return false if s.empty?

  return false unless s[0].is_a?(String) && s[0].match?(/[A-Za-z]/)

  !%w[A E I O U a e i o u].include? s[0]
end

def binary_multiple_of_4?(s)
  s.match?(/^[1, 0]*0$/)
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN number cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price)
  end
end
