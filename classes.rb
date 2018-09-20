class Animal

end

# dog is an animal (classes that are derived)
class Dog < Animal
    def initialize(name)
        @name = name
    end
end

class Cat < Animal
    def initialize(name)
        @name = name
    end
end