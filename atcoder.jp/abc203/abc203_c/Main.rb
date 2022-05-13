(n,k),*ab=$<.map{_1.split.map &:to_i}
now=0
ab.sort_by{|a,b|a}.each{|a,b|
  dist = a - now
  if k >= dist
    now = a
    k = k - dist + b
  else
    break
  end
}
puts now + k