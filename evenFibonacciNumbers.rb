# create the fibonacci sequence up to a given number, take the even numbers and return their sum

# The starting pair of the Fibonacci sequence
fib = [0, 1]

# A counter starting from the next number if fib
i = 2

# The even number array to be filled as the loop goes
even_steven = []


loop do

# num1 is number at index location of i-1 in the fib array
  num1 = fib[i - 1]

# num2 is number at index location of i-2 in the fib array
  num2 = fib[i - 2]

# The loop stops if the sum goes over the given number
  break if num1 + num2 > n

# The sum of the numbers gets pushed into the fib array, creating the sequence
  fib << num1 + num2

# Counter increments (WOW)
  i += 1

# The numbers get pushed into the even_steven array if they're... even
  even_steven << (num1 + num2) if (num1 + num2).even?
end

# Sum all the numbers in the even_steven array
# Print it out as that's what's required in the challenge
p even_steven.reduce(:+)


