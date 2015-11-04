# When done, submit this entire file to the autograder.

# Part 1
def sum arr
  return 0 if arr.empty?
  return arr.inject(:+)
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort!
  arr[arr.length-1] + arr[arr.length-2]
end

def sum_to_n? arr, n
  return false if arr.empty?
  return false if arr.length == 1
  for i in 0..arr.length - 2
     for j in i+1..arr.length - 1
        return true if arr[i] + arr[j] == n
     end
  end
  return false 
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return false if s.empty?
  !(/\A[aeiou]/i =~ s) && (/\A[a-zA-Z]/ =~ s)
end

def binary_multiple_of_4? s
  return false if (/[^01]/ =~ s)
  (/100$/ =~s) || (/^0$/=~ s)
end

# Part 3

class BookInStock
 def initialize isbn, price
   raise ArgumentError if isbn.empty? || price <= 0
   @price = price
   @isbn = isbn
 end
 attr_accessor :price
 attr_accessor :isbn
 
 def price_as_string
   "$%.2f" % @price
 end
end
