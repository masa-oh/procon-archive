s = gets.chomp
h = (?A..?Z).zip(1..26).to_h
ans = 0
s.chars.reverse_each.with_index do |c, i|
  ans += h[c] * (26**i)
end
p ans