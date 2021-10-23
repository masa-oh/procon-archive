(h,w),*a=$<.map{_1.split.map &:to_i}
is=[*0..h-1].combination(2).to_a
js=[*0..w-1].combination(2).to_a

flg=true
is.each{|i1,i2|
  js.each{|j1,j2|
    flg=false if a[i1][j1]+a[i2][j2]>a[i2][j1]+a[i1][j2]
  }
}
puts flg ? :Yes : :No