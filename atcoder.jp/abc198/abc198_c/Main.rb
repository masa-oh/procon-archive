r,x,y=gets.split.map &:to_i
d=Math::sqrt x*x+y*y
p d<r ? 2 : (d/r).ceil