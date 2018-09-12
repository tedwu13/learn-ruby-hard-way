## for formatting you can use %{} for multiple values but use #{} for single value string

formatter = "%{first} %{second}"

puts formatter %{first: 1, second: "text" }
puts formatter %{
    first: "I had this thing",
    second: true
}

