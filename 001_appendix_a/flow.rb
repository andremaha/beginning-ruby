#!/usr/bin/ruby

## Branching and Conditional Execution ##
# If
a = 4
b = 6
c = 10

if a + b == 14
  puts "This should never happen"
elsif a + b == c
  puts "This is likely to happen"
else
  puts "Nothing of the above worked"
end

# Case 
fruit = "lemon"

case fruit
when "orange"
  color = "orange"
when "apple"
  color = "red"
when "lemon"
  color = "yellow"
else
  color = "unknown"
end

puts color

# Ternary Operator
a = 9

puts a >= 10 ? "a is greater or eqals 10" : "a is less then 10"

## Loops
i = 0
loop do
  i += 1
  puts "i now is " + i.to_s
  break if i >= 5
end

# While loop - skip even numbers
i = 0
while (i < 15)
  i += 1
  next if i % 2 == 0
  puts i
end

# Until loop - issentially oposite to while
i = 0
until (i >= 15)
  i += 1
  next if i % 2 == 0
  puts i
end