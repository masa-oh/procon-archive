(_,),*dst=$<.map{_1.split.map &:to_i}
h={}; flg=nil
dst.each{|d,s,t|
  h[d]||=Array.new(24,nil)
  (s...t).each{|i|
    h[d][i] ? (flg=true; break) : h[d][i]=1
  }
}
puts flg ? :Yes : :No