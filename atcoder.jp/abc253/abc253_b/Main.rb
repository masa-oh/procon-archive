h,w=gets.split.map &:to_i
s=$<.map{_1.chomp.chars}
os=[]
(0...h).each{|i|
  (0...w).each{|j|
    os << [i,j] if s[i][j]==?o
  }
}
p os.transpose.map{|x,y|(x-y).abs}.sum