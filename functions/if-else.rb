# # elsif vs elif or else if
# people = 30
# cars = 40
# trucks = 15


# if cars > people
#     puts "we should take cars"
# elsif cars < people
#     puts "we should not take cars"
# else
#     puts "we cant decide"
# end

puts "You enter a dark room with two doors.  Do you go through door #1 or door #2?"
print "> "

door = $stdin.gets.chomp # use $stdin for command line arguments


if door == "1"
    puts "There's a giant bear here eating a cheese cake.  What do you do?"
    puts "1. Take the cake."
    puts "2. Scream at the bear."

    print "> "
    bear = $stdin.gets.chomp

    if bear == "1"
        puts "The bear eats your face off.  Good job!"
    elsif bear == "2"
        puts "The bear eats your legs off.  Good job!"
    else
        puts "well doing %s is probably better. bear runs away" %bear
    end
elsif door == "2"
    puts "You stare into the endless abyss at Cthulhu's retina."
    puts "1. Blueberries."
    puts "2. Yellow jacket clothespins."
    puts "3. Understanding revolvers yelling melodies."

    print "> "
    insanity = $stdin.gets.chomp
end

