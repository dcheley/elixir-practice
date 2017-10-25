IO.puts "Hello world from Elixir"

IO.puts "hello\nworld"

# Outputs 6 because ö require 2 bytes in UTF-8
IO.puts byte_size("hellö")

IO.puts String.upcase("caps")

subtract = fn a, b -> a - b end

IO.puts is_function(subtract, 2)

# . Required for anonymous functions (custom fns)
IO.puts subtract.(1, 2)

# Not the same, '' is charlist while "" is string
IO.puts 'hello' == "hello"
