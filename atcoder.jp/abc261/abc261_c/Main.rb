N = gets.to_i
S = $<.map &:chomp
h = Hash.new(0)
ans = []

S.each do |str|
  new_str = h[str] > 0 ? str + "(#{h[str]})" : str
  ans << new_str
  h[str] += 1
end

puts ans