# Concepts:
## Variable formatting is #{variable_name}
## Variable can be an expression for math
## "yo"*10 is yo times 10
## Print has no new line but puts create a new line

puts "HELLO WORLD"

# Variables

num_cryptocurrencies = 1900
cars_driven = 30
space_in_a_car = 4
carpool_capacity = cars_driven * space_in_a_car

#variable formatting
puts "There are #{cars_driven} cars driven"

# can also do math for expression as a Variable

my_name = "TED WU"
my_height = 74
my_weight = 180
puts "LETS TALK ABOUT MY NAME: #{my_name}"
puts "My height + weight is: #{my_height + my_weight}"

# puts vs prints
puts "Mary had a little lamb"
puts "fleece white as #{'snow'}"

puts "."*10

a = "hello"
b = "world"
c = "!"

print a + b + c
puts a + b + c

