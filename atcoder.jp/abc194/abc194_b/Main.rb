n=gets.to_i
as,bs=$<.map{_1.split.map &:to_i}.transpose

a_min=as.each_with_index.min(2)
b_min=bs.each_with_index.min(2)
if a_min[0][1]==b_min[0][1]
  puts [
         a_min[0][0]+b_min[0][0],
         [a_min[0][0],b_min[1][0]].max,
         [a_min[1][0],b_min[0][0]].max
       ].min
else
  puts [a_min[0][0],b_min[0][0]].max
end