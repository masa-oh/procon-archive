n,k,*a=$<.read.split.map &:to_i
ary=Array.new(k){[]}
a.each_with_index{|v,idx|
  ary[idx % k] << v
}
ary.each{_1.sort!}

flg=true
now=0
prev=0
n.times{|i|
  now=ary[i%k][i/k]
  next prev=now if i==0
  flg=false if prev > now
  prev=now
}

puts flg ? :Yes : :No