a, b, c = gets.split.map(&:to_i)

if a == b
  puts c
elsif a == c
  puts b
elsif b == c
  puts a
else
  puts 0
end