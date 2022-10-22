n,*as=$<.read.split.map &:to_i
ary=Array.new(2*n+1, 0)
as.each_with_index{|a,i|
  ary[2*(i+1)-1] = ary[2*(i+1)] = ary[a-1] + 1
}
puts ary