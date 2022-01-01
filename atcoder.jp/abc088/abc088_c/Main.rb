c=$<.map{_1.split.map &:to_i}
flg=false
(0..100).each{|a1|
  (0..100).each{|a2|
    (0..100).each{|a3|
      b=c[0].map{_1-a1}
      flg=true if b==c[1].map{_1-a2} && b==c[2].map{_1-a3}
    }
  }
}
puts flg ? :Yes : :No