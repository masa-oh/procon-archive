(Q,),*qs=$<.map{_1.split.map &:to_i}
bag,sum=[],0

qs.each{|p,x|
  case p
  when 1
    d=x-sum
    idx=bag.bsearch_index{_1>d}
    idx ? bag.insert(idx,d) : bag.insert(-1,d)
  when 2
    sum+=x
  when 3
    puts bag.shift+sum
  end
}