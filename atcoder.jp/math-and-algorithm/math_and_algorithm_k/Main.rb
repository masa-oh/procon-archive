n=gets.to_i
h=(1..n).map{[_1,true]}.to_h
h[1]=false
x=2
while x * x <= n
  y=x
  while (y += x) <= n
    h[y]=false
  end
  x=(x+1..).find{h[_1]}
end
puts h.map{|k,v|k if v}.compact*' '