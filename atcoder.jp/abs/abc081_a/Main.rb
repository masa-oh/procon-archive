count = 0

gets.chomp.chars.map(&:to_i).each do |i|
  count += 1 if i == 1
end

print count