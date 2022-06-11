x,a,d,n=gets.split.map &:to_i
if d==0
  puts (x-a).abs
  exit
elsif d>0
  min=a
  max=a+d*(n-1)
else
  min=a+d*(n-1)
  max=a
end

if x.between?(min,max)
  puts [(x%d-a%d).abs, d.abs-(x%d-a%d).abs].min
else
  puts [(min-x).abs, (x-max).abs].min
end