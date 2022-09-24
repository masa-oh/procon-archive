x,y,z=gets.split.map &:to_i
if (x<0 && y<0 && x<y && z<y) || (x>0 && y>0 && y<x && y<z) # 到達不能
  puts -1
elsif x*y<0 || (x<0 && y<x) || (x>0 && x<y) # 壁に邪魔されない
  puts x.abs
elsif x*z<0 # ハンマーが逆方向かつ壁に邪魔される
  puts z.abs*2+x.abs
else # ハンマー、壁、ゴールの順に並んでいる
  puts x.abs
end