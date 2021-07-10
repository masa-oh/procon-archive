_=gets.split.map &:to_i
C=gets.split.map(&:to_i).sort

ans=1
C.each_with_index{|c,i|ans = ans * [0, c-i].max % (10**9+7)}
puts ans