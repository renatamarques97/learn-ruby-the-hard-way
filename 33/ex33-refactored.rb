puts "type a number of repetition"
limit = gets.chomp

numbers = []
for i in 0..limit.to_i
  puts "At the top i is #{i}"
  numbers.push(i)
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end
puts "The numbers: "
for num in numbers
  puts num
end
