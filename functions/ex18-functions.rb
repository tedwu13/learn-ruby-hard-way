# Four different ways to write a function

def print_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}"
    puts "arg2: #{arg2}"
end


print_two("first arg", "second_arg")


# Did you start your function definition with def?
# Does your function name have only characters and _ (underscore) characters?
# Did you put an open parenthesis ( right after the function name?
# Did you put your arguments after the parenthesis ( separated by commas?
# Did you make each argument unique (meaning no duplicated names)?
# Did you put a close parenthesis ) after the arguments?
# Did you indent all lines of code you want in the function two spaces?
# Did you end your function with end lined up with the def above?
