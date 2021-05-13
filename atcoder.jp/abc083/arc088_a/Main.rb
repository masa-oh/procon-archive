X, Y = gets.chomp.split.map(&:to_i)

count = 0
num = X

while num <= Y do
  num *= 2
  count += 1
end

puts count