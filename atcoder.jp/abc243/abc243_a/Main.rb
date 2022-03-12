ary=[?F,?M,?T]
v,a,b,c=gets.split.map &:to_i
v%=(a+b+c)
if (v-=a)<0; puts ary[0]
elsif (v-=b)<0; puts ary[1]
else; puts ary[2]
end