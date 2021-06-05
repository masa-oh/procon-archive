A = gets.split.map(&:to_i)
if A.count(5) == 2 && A.count(7) == 1
  puts "YES"
else
  puts "NO"
end