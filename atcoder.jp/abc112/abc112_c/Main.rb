(n,),*xyh=$<.map{_1.split.map &:to_i}
(0..100).each{|cx|
  (0..100).each{|cy|
    H=xyh.select{|x,y,h|h!=0}.first.then{|x,y,h|h+(cx-x).abs+(cy-y).abs}
    flg=true
    xyh.map{|x,y,h|flg=false if [H-(cx-x).abs-(cy-y).abs,0].max!=h}
    puts "#{cx} #{cy} #{H}" if flg
  }
}