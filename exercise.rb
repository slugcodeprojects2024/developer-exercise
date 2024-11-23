class Exercise

  # Replace words longer than 4 characters with "marklar" or "Marklar"
  def self.marklar(str)
    str.gsub(/\b\w{5,}\b/) do |word|
      if word[0] =~ /[A-Z]/
        "Marklar"
      else
        "marklar"
      end
    end
  end

  # Return the sum of all even Fibonacci numbers up to the nth term
  def self.even_fibonacci(nth)
    fib = [1, 1] # Start the Fibonacci sequence
    while fib.length < nth
      fib << fib[-1] + fib[-2] # Generate the next Fibonacci number
    end
    fib.select { |num| num.even? }.sum # Select even numbers and sum them
  end

end
