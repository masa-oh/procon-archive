(_,),a,b,c=$<.map{_1.split.map &:to_i}
h=a.tally
p c.map{h[b[_1-1]]||0}.sum