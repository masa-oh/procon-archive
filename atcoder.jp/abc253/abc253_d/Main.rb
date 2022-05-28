n,a,b=gets.split.map &:to_i
sum=(1+n)*n/2
as=(1+n/a)*a*(n/a)/2
bs=(1+n/b)*b*(n/b)/2
abs=(1+n/(a.lcm(b)))*a.lcm(b)*(n/(a.lcm(b)))/2
p sum-as-bs+abs