# 1. string interpolation vs concat
# 2. extract repetitive logic to methods
# 3. Keep track of variable types (class)
# 4. Variable scope determined by do...end; outer scope vars are available to inner scope, but not vice versa
 
require 'pry'
def say(msg)
	puts "=> #{msg}"
end


say "What's the first number?"
num1 = gets.chomp # generally you want to maintain data integrity on data received from the user, incase you need to go back to it for debugging purposes.
say "What is your second number?"
num2 = gets.chomp

puts "Which operation would you like to perform? (enter +, -, *, /, %"
operation = gets.chomp
binding.pry

case operation

when '+'
	puts num1.to_i + num2.to_i
when '-'
	puts num1.to_i - num2.to_i
when '*'
	puts num1.to_i * num2.to_i
when '/'
	puts num1.to_f / num2.to_f
when '%'
	puts num1.to_i % num2.to_i
else
	puts "Operation not recognized!"
end

#puts "The number is #{num1}"
 