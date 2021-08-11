n=gets.to_i; s=n.times.map{gets.chomp}
m=gets.to_i; t=m.times.map{gets.chomp}
puts (s+t).uniq.map{s.count(_1)-t.count(_1)}.push(0).max