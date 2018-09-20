### require to use the module and access the apple function
### can also get the variable out of the module

require "./mystuff_module.rb"

MyStuff.apple()

puts MyStuff::TANGERINE # how you use get a variable from a module


# Classes are like modules
# to convert a module into a class

# module TestModule
#     def TestModule.hello_world
#         puts "HELLO WORLD"
#     end
# end

class TestModule
    def initialize()
        @tangerine = "a thousand years between"
    end

    attr_reader :tangerine

    def apple()
        puts "I am classy apple!"
    end
end


stuff = TestModule.new()
puts stuff.apple() #calling a function
puts stuff.tangerine # printing out an attribute

class Song
    def initialize(lyrics)
        @lyrics = lyrics
    end

    def sing_a_song()
        @lyrics.each do |line|
            puts line
        end
    end
end


new_song = Song.new(["hello my name is ted", "i like LALALA"])
puts new_song.sing_a_song