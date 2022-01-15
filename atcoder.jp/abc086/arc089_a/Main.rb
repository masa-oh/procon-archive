(n,),*txy=$<.map{_1.split.map &:to_i}
flg=true
lt=lx=ly=0
txy.each{|t,x,y|
  d=(x-lx).abs+(y-ly).abs
  dt=t-lt
  break flg=false if d>dt || (d-dt).odd?
  lt,lx,ly=t,x,y
}
puts flg ? :Yes : :No