n=gets.to_i
xy=$<.map{_1.split.map &:to_i}
h={}
xy.each{|x,y|
  h[x] ? h[x].push(y) : h[x]=[y]
}
h=h.filter{|k,v|v.size>=2}
nums=h.values.flatten.uniq
ans=0
nums.combination(2).each{|combi|
  tmp=0
  h.values.each{|v|
    tmp+=1 if(combi-v).empty?
  }
  ans+=tmp*(tmp-1)/2
}
p ans