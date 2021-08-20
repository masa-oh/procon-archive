s=gets.chomp.chars
g={}
10.times{|i|g[s[i]] ? g[s[i]]<< i : g[s[i]]=[i]}

ans=0
10000.times{|i|
  i=sprintf("%04d",i)
  cs=i.chars.map &:to_i
  if g['o'].nil? || g['o'].all?{cs.include?(_1)}
    if g['x'].nil? || g['x'].all?{!cs.include?(_1)}
      ans+=1
    end
  end
}
p ans