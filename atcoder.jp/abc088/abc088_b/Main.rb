(n,),a=$<.map{_1.split.map &:to_i}
p a.sum-a.sort.reverse.select.with_index{_2.odd?}.sum*2