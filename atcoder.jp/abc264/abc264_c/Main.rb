h1,w1=gets.split.map &:to_i
a=h1.times.map{gets.split.map &:to_i}
h2,w2=gets.split.map &:to_i
b=h2.times.map{gets.split.map &:to_i}

flg=false
[*0...h1].combination(h2).each{|arr1|
  [*0...w1].combination(w2).each{|arr2|
    x=arr1.map.with_index{|h,i|
      arr2.map.with_index{|w,j|
        a[h][w]==b[i][j]
      }.all?
    }.all?
    flg=true if x
  }
}
puts flg ? :Yes : :No