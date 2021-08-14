s,t=gets.split.map &:to_i
ans=0
(0..s).each{|i|
  (0..s).each{|j|
    (0..s-i-j).each{|k|
      ans+=1 if i*j*k<=t
    }
  }
}
puts ans