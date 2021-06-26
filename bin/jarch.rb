require_relative "../lib/factorial"

puts "Enter the number: "
num = gets.chomp.to_i

Factorial.result(num)