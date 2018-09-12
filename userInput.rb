## Gets.chomp stores user input
## Gets.chomp.to_i chomp off \n amd convert to integer
## chomp.to_f is for floating numbers
print "How old are you?"
age = gets.chomp

print "How Tall are you? (ft)"
height = gets.chomp

print "How much do you weight (kg)"
weight = gets.chomp

puts "You are #{age} years old, #{height} ft/inches, and also #{weight} kg"


print "what is total bill"
total_bill = gets.chomp.to_f
tip = total_bill * 0.10
puts "tip is #{tip}"
