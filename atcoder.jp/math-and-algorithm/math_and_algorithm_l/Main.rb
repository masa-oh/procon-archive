n=gets.to_i
x=2
flg=true
while x * x <= n
  flg=false if n % x == 0
  x+=1
end
puts flg ? :Yes : :No