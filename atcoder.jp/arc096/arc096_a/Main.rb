a,b,c,x,y=gets.split.map &:to_i
ans=Float::INFINITY
(0..2*(10**5)+10).each{|ab|
  price=c*ab+a*[x-ab/2,0].max+b*[y-ab/2,0].max
  ans=[ans,price].min
}
p ans