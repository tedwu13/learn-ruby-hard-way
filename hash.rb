stuff = {'name' => 'Zed', 'age' => 39, 'height' => 6 * 12 + 2}

# puts stuff
puts stuff["name"]

puts stuff["age"]

puts stuff["height"]

stuff["city"] = "San Francisco"

puts stuff["city"]

puts stuff

stuff.delete("city")

puts stuff

states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

states.each do |state, abbrev|
    puts "state: #{state}, ABBREV: #{abbrev}"
end

puts "-" * 10
state = states["Texas"]

# by default ruby says "nil" when something isn't in there


if !state
    puts "state #{state}"
end

state ||= "Does not exist"
puts "state is #{state}"
