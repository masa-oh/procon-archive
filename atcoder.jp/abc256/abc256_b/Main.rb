n,*a=$<.read.split.map &:to_i
ans=0
x=0
n.times do |i|
  x += a[-i-1]
  break ans=n-i if x>=4
end
p ans