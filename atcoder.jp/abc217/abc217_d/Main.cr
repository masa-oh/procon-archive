l,q=read_line.split.map &.to_i
cxs=q.times.map{read_line.split.map &.to_i}
ary=[0,l]
cxs.each{|cx|
  idx=ary.bsearch_index{|i|i>cx[1]}.not_nil!
  case cx[0]
  when 1
    ary.insert(idx,cx[1])      
  when 2
    p ary[idx]-ary[idx-1]
  end
}