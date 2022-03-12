n=gets.to_i
xy=n.times.map{gets.split.map &:to_i}
s=gets.chomp.chars
flag=false
xyd=xy.map.with_index{|(x,y),i|[x,y,s[i]]}
h=xyd.group_by{|x,y,d|y}
h.values.each{|ary|
  next if ary.size<=1
  rflag=false
  ary.sort_by{|x,y,d|x}.each{|x,y,d|
    rflag=true if d==?R
    flag=true if rflag && d==?L
  }
}
puts flag ? :Yes : :No