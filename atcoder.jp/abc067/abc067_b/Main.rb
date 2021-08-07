(_,k),l=$<.map{_1.split.map &:to_i}
p l.sort.reverse[0...k].sum