#A fibonacci implementation
#
# This will both be iterative and non iterative

# Let's assume that the 0 and 1 step of fib is just returned
def fib( step )
  if step == 0
    return 0
  elsif step == 1
    return 1
  else
    a = 0
    b = 1
    sum = 0
    # Assume it's not 1 or 0
    (2..step).each {
      sum = a + b
      a = b
      b = sum
    }
    sum
  end
end

# This is the recursive fib
def recurseFib( step )
  if step == 0
    return 0
  elsif step == 1
    return 1
  else
    sum = recurseFib( step - 2 ) + recurseFib( step - 1)
  end
end



puts "Wecome to Fibonacci!"
puts "The fibonacci sequence is calculate by adding the previous two numbers"
puts "Sequence: 0,1,1,2,3,5,8,13..."
puts "The value at step 6 #{fib(8)}"
puts "Recursive function returns #{recurseFib(8)}"