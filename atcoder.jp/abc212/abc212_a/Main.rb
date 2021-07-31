A,B=gets.split.map &:to_i
if A>0 && B>0
  puts :Alloy
elsif A==0
  puts :Silver
elsif B==0
  puts :Gold
end