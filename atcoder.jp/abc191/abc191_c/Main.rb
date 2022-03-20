h,w=gets.split.map &:to_i
s=$<.map{_1.chomp}
ans=0
(0..h-2).each{|i|
  (0..w-2).each{|j|
    c=[s[i][j], s[i+1][j], s[i][j+1], s[i+1][j+1]].count('#')
    ans+=1 if c==1 || c==3
  }
}
p ans