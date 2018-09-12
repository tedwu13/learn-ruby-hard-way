## use $stdin.gets.chomp with ARGV

# first, second, third = ARGV

# puts "Your first variable is: #{first}"
# puts "Your second variable is: #{second}"
# puts "Your third variable is: #{third}"

user_name = ARGV.first # get first argument
puts user_name

first_arg, second_arg, third_arg = ARGV # for multiple arguments use this
puts "HI #{user_name}"

address = $stdin.gets.chomp
puts "you said you lived at #{address}"