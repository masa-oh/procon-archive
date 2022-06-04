n,m=gets.split.map &:to_i
ps=n.times.map{gets.to_i}.push 0

h=Hash.new{|h,k|h[k]=false}
(0..n).each do |i|
  (0..n).each do |j|
    v = ps[i] + ps[j]
    h[v] = true
  end
end

ary = h.keys.sort.reverse

max = 0
ary.each{|v1|
  next if v1 > m
  v2 = ary.bsearch{|v| v1 + v <= m} || 0
  max = [max, v1 + v2].max
}

puts max