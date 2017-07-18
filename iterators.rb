# Print all words in the array but uppercased.
def print_capitals(words)
  words.each do |x|
    puts x.upcase
  end
end

# Double all numbers in the array and return a new array.
def double_it(numbers)
  numbers.map do |x|
    x * 2
  end
end

# Return an array of all even numbers in the given array.
def find_evens(numbers)
  numbers.select do |x|
    (x % 2) == 0
  end
end

# Return the product of all numbers
# Do _NOT_ use numbers.product.
def product(numbers)
  product = 1;
  numbers.each do |x|
    product = product * x;
  end
  product
end

# Get all odd numbers from the given array, square them, and
# return a new array of those squares.
def square_only_odds(numbers)
  odd_array = numbers.select do |x|
    (x % 2) != 0
  end

  odd_array.map do |i|
    i = i**2
  end

end

# Square all given numbers and sum them.
def sum_of_squares(numbers)
  sum = 0;

  squared = numbers.map do |x|
    x = x**2
    sum = sum + x
  end
  sum

end

# Return a new array of the ordinals (1 -> 1st) of the numbers given.
def ordinals(numbers)
  ordinals = numbers.map do |x|
    x = x.to_s
    if(x[x.length-1] == "1")
      x = "#{x}st"
    elsif(x[x.length-1] == "2")
      x = "#{x}nd"
    elsif(x[x.length-1] == "3")
      x = "#{x}rd"
    elsif(x == '11')
      x = "#{x}th"
    else
      x = "#{x}th"
    end
  end
end
