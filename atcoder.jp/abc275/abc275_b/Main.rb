MOD=998244353
a,b,c,d,e,f=gets.split.map &:to_i
p ((a%MOD)*(b%MOD)*(c%MOD)-(d%MOD)*(e%MOD)*(f%MOD))%MOD