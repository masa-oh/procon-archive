n=gets.to_i
ary=[*1..2*n+1]
puts ary.pop
$>.flush
while (m=gets.to_i)>0
  ary.delete m
  puts ary.pop
  $>.flush
end