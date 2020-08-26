puts "Simple calculator"
25.times { print "-" }
puts

puts "Enter the first number:"
num_1 = gets.chomp
puts "Enter the second number:"
num_2 = gets.chomp
puts "What do you want to do?"
puts "Enter 1 for multiplication, 2 for division, 3 for subtraction, 4 for addition, or 5 for modulo:"
choice = gets.chomp

if choice == "1"
    puts "The first number multiplied by the second number is #{num_1.to_f * num_2.to_f}"
elsif choice == "2"
    puts "The first number divided by the second number is #{num_1.to_f / num_2.to_f}"
elsif choice == "3"
    puts "The first number subtracted from the second number is #{num_2.to_f - num_1.to_f}"
elsif choice == "4"
    puts "The first number added to the second number is #{num_1.to_f + num_2.to_f}"
elsif choice == "5"
    puts "The first number modulo the second number is #{num_1.to_f % num_2.to_f}"
else
    puts "Invalid input"
end


