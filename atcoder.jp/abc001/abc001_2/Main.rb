m=gets.to_i
km=m/1000
if m<100
  vv='00'
elsif m.between?(100,5000)
  vv=(m/100).to_s
  vv='0'+vv if vv.size==1
elsif m.between?(6000,30000)
  vv=km+50
elsif m.between?(35000,70000)
  vv=(km-30)/5+80
else
  vv=89
end
puts vv