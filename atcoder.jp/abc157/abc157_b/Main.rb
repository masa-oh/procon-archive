a=3.times.map{gets.split.map &:to_i}
_,*b=$<.map &:to_i

f=Array.new(3){[0]*3}

3.times{|i|
  3.times{|j|
    f[i][j]=1 if b.include?(a[i][j])
  }
}

ans=false
ans=true if f.include?([1]*3)
ans=true if f.transpose.include?([1]*3)
ans=true if f[0][0]+f[1][1]+f[2][2]==3
ans=true if f[0][2]+f[1][1]+f[2][0]==3

puts ans ? :Yes : :No