N = gets.to_i
A = gets.split.map(&:to_i)
cnt = 0
A.each { |a|
  cnt += a<10 ? 0 : a-10
}
puts cnt