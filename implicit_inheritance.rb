# What is inheritance?
# DerivedClass/Subclass  < BASE/Superclass 
# is-a relationship


# actions on child imply action on the parent (IMPLICIT INHERITANCE)
# actions on child override an action on the parent
# actions on child alter action on parent


# implicit inheritance
class Parent
    def implicit()
        puts "CALLING IMPLICIT METHOD"
    end
end

class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

#override 
class Parent
    def get_height()
        puts "Parent override()"
        return "5'9"
    end
end

class Child < Parent
    def get_height()
        puts "Child override()"
        return "5'3"
    end
end

dad = Parent.new()
puts dad.get_height()
son = Child.new()
puts son.get_height()

# alter before or after

class Parent
    def altered()
        puts "Parent altered()"
    end
end

class Child < Parent
    def altered()
        puts "CHILD BEFORE PARENT ALTERED()"
        super()
        puts "CHILD after parent altered()"
    end
end

p = Parent.new()
c = Child.new()
p.altered()
c.altered()


# Using super() with initialize
# The most common use of super() is actually in initialize functions in base classes. This is usually the only place where you need to do some things in a child, then complete the initialization in the parent. Here's a quick example of doing that in the Child from these examples: