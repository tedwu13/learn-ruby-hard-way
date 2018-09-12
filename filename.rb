filename = ARGV.first

txt = File.open(filename)

puts "Here's your file #{filename}:"
print txt.read

print "type the file again: "
file_again = $stdin.gets.chomp

puts "this is file again: #{file_again}"

file_open = File.open(file_again)

print file_open.read
file_open.close

unless file_open.closed?
    puts "file is not closed"
    file_open.close
else
    puts "file already closed"
end


