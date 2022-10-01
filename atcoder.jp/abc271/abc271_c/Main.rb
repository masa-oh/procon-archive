require 'set'
n,*a=$<.read.split.map &:to_i
a.sort!
as=Set.new(a)
ans=(1..10**6).bsearch{|v|
  as_cnt=(1..v).count{as.include? _1}
  nas_cnt=v-as_cnt
  nas_cnt*2 > a.size-as_cnt
}
p ans ? ans-1 : 0