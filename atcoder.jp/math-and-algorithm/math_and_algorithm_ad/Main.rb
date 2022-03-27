_,x,*a=$<.read.split.map &:to_i
a.sort!
puts x==a.bsearch{_1>=x} ? :Yes : :No