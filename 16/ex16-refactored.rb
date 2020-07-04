filename = ARGV.first
puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."
print "? "
STDIN.gets
puts "Opening the file..."
target = File.open(filename, 'w') # dont need to truncate
LINES = 3
puts "Now I'm going to ask you for #{LINES} lines."
text = []

LINES.times do
  lines = 0
  text[lines] = STDIN.gets.chomp
  target.write(text[lines] + " ")
  lines += 1
end

puts "I'm going to write these to the file."
puts "And finally, we close it."
target.close
