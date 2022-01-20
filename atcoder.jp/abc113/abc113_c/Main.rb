def join0(i)
  "%06d" % i
end

(n,m),*py=$<.map{_1.split.map &:to_i}
h=Hash.new{|h,k|h[k]=[]}
py.each{|p,y|h[p]<<y}
h=h.map{|k,v|[k,v.sort]}.to_h

puts py.map{|p,y|
  "#{join0(p)}#{join0(h[p].bsearch_index{|v|y<=v}+1)}"
}