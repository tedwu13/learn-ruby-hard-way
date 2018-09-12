### file.exists?(file_name)
from_file, to_file = ARGV

puts "COPYing from #{from_file} to #{to_file}"

copied_from_file = open(from_file)
input_data = copied_from_file.read

# puts "input file is #{input_data.length} bytes long"

# puts "does input file exists? #{File.exist?(from_file)}"
# puts "does output file exists? #{File.exist?(to_file)}"

# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# $stdin.gets

output_file = open(to_file, "w")

output_file.write(input_data)
output_file.close
copied_from_file.close