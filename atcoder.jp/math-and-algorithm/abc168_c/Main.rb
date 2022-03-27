include Math
a,b,h,m=gets.split.map &:to_i
lh=m*6
sh=h*30+m*0.5
angle=lh-sh
puts sqrt(a**2 + b**2 - 2*a*b*cos(angle*PI/180))