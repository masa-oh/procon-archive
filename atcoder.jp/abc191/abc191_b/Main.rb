_,x,*a=$<.read.split.map &:to_i
puts a.select{_1!=x}*' '