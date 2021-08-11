(w,h,_),*xya=$<.map{_1.split.map &:to_i}
ll=[0,0]
ur=[w,h]
xya.each{|x,y,a|
  case a
  when 1
    ll[0]=x if ll[0]<x
  when 2
    ur[0]=x if ur[0]>x
  when 3
    ll[1]=y if ll[1]<y
  when 4
    ur[1]=y if ur[1]>y
  end
}
p [ur[0]-ll[0], 0].max*[ur[1]-ll[1], 0].max