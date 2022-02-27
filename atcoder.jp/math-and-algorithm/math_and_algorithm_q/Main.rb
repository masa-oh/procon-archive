def gcd(a,b)
  while a>0 && b>0
    a>b ? a%=b : b%=a
  end
  [a,b].max
end

def lcm(a,b)
  a*b/gcd(a,b)
end

_,*a=$<.read.split.map &:to_i
p a.inject{|i,j|lcm(i,j)}