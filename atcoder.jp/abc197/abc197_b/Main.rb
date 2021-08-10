h,w,x,y=gets.split.map &:to_i
s=$<.map{_1.chomp.chars}
ans=1

(0..x-2).reverse_each{|i|s[i][y-1]=='.' ? ans+=1 : break} if x>1
(0..y-2).reverse_each{|j|s[x-1][j]=='.' ? ans+=1 : break} if y>1
(x..h-1).each{|i|s[i][y-1]=='.' ? ans+=1 : break} if x<h
(y..w-1).each{|j|s[x-1][j]=='.' ? ans+=1 : break} if y<w

p ans