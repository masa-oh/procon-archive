n,k,*ps=$<.read.split.map &:to_i
g=(1..n).map{[_1,false]}.to_h
(0..k-1).each{|i|
  g[ps[i]]=true
}
puts ans=ps[0...k].min
(k..n-1).each{|i|
  g[ps[i]]=true
  if ans<ps[i]
    ans=(ans+1..n).find{g[_1]}
  end
  puts ans
}