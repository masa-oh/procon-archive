require 'set'

(n,x,y,z),a,b=$<.map{_1.split.map &:to_i}
h=n.times.map{[_1,false]}.to_h
ai=a.map.with_index
bi=b.map.with_index
ci=a.zip(b).map.with_index{|(a,b),i|[a+b,i]}

#step1
ai.max_by(x){|v,i|[v,-i]}.each{|v,i|h[i]=true}

#step2
keys=Set.new(h.select{|k,v|v}.keys)
bi.select{|k,v|!keys.include?(v)}.max_by(y){|v,i|[v,-i]}.each{|v,i|h[i]=true}

#step3
keys=Set.new(h.select{|k,v|v}.keys)
ci.select{|k,v|!keys.include?(v)}.max_by(z){|v,i|[v,-i]}.each{|v,i|h[i]=true}

puts h.select{|k,v|v}.keys.map &:succ