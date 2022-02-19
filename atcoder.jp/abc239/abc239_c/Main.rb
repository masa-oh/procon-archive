x1,y1,x2,y2=gets.split.map &:to_i
pattern=[[2,1],[1,2],[-2,1],[-1,2],[2,-1],[1,-2],[-2,-1],[-1,-2]]
flg=false
pattern.map{|x,y|[x+x1, y+y1]}.map{|nx1,ny1|
  pattern.each{|x,y|
    flg=true if x+nx1==x2 && y+ny1==y2 
  }
}
puts flg ? :Yes : :No