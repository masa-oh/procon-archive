(_,),a=$<.map{_1.split.map &:to_i}
p a.each_with_index.sort[-2][1]+1