# the_count = [1, 2, 3, 4, 5]
# fruits = ['apples', 'oranges', 'pears', 'apricots']
# change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# # same as above, but in a more Ruby style
# # this and the next one are the preferred 
# # way Ruby for-loops are written
# # fruits.each do |fruit|
# #     puts "A fruit of type: #{fruit}"
# #   end
# for number in the_count
#     puts number
# end

# the_count.each do |number|
#     puts "Printing out number #{number}"
# end


# change.each {|i| puts "I got #{i}" }

# elements = []

# (0..5).each do |i|
#     puts "pushing #{i}"
#     elements.push(i)
# end

# @array = (1..10)
# @array.each do |arrayElement|
#     puts "AE ${arr}", arrayElement
# end



ten_things = "Apples Oranges Crows Telephone Light Sugar"

stuff = ten_things.split(" ")

more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]
while stuff.length != 10
    next_thing = more_stuff.pop()

    puts "Adding: #{next_thing}"
    stuff.push(next_thing)
end

new_string = stuff[3..5].join("#")
puts new_string.class