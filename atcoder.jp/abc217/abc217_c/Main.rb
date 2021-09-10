n,*ps=$<.read.split.map &:to_i
puts ps.map.with_index{[_1,_2+1]}.sort_by{_1}.transpose[1]*' '