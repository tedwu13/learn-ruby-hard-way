input_file = ARGV.first

def print_all_content(file)
    puts file.read
end

def rewind(file)
    file.seek(0)
end


current_file = open(input_file)
# print_all_content(current_file)
rewind(current_file)