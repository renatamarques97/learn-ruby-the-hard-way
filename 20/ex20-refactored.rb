current_file = File.open(ARGV[0])

def print_all(f)
  puts f.read()
end

def rewind(f)
  # Seeks to the absolute location given by _amount_
  f.seek(0, IO::SEEK_SET)
end

def print_a_line(line_count, f)
  puts "#{line_count} #{f.readline()}"
end

puts "First let's print the whole file:"
puts # a blank line
print_all(current_file)
puts "Now let's rewind, kind of like a tape."
rewind(current_file)
puts "Let's print three lines:"
current_line = 1

def print(line = 1, file)
  (line..IO.readlines(file).size).each do |_|
    print_a_line(line, file)
    line += 1
  end
end

print(current_line, current_file)
