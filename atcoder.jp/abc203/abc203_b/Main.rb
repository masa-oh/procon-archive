N, K = gets.split.map(&:to_i)
sum = 0

(1..N).each do |n|
  sum += 100 * n * K
end

(1..K).each do |k|
  sum += k * N
end

puts sum