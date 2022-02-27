def gcd(a,b)
  while a>0 && b>0
    a>b ? a%=b : b%=a
  end
  [a,b].max
end

_,*a=$<.read.split.map &:to_i
p a.inject{|i,j|gcd(i,j)}