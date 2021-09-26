a,b,c=gets.split.map &:to_i
p (a..b).find{_1%c==0}||-1