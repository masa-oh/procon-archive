n,_=gets.split.map(&:to_i)
ary=gets.split.map(&:to_i)
loop do
  if n.to_s.split(//).map(&:to_i).any? {|i| ary.include?(i)}
    n += 1
  else
    break
  end
end
puts n