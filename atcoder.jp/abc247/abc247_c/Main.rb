n=gets.to_i
ary=[1]
n.times{|i|
  next if i==0
  m=i+1
  ary2=ary.dup
  ary.push m
  ary.concat ary2
}
puts ary*' '