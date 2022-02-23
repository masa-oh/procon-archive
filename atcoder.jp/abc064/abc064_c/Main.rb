_,*as=$<.read.split.map &:to_i
ary=as.map{|a|(1..8).bsearch{|i|a<i*400}}
x=ary.compact.uniq.size
y=ary.count(nil)
puts [[x,1].max, [x+y,1].max]*' '