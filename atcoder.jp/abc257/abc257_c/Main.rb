n=gets.to_i
s=gets.chomp.chars
w=$<.read.split.map &:to_i

cnt=s.count(?1)
ans=cnt
h=Hash.new{|h,k|h[k]=0}
w.zip(s).each{|v1,v2|v2==?0 ? h[v1]+=1 : h[v1]-=1}
h.keys.sort.each{|k|
  cnt+=h[k]
  ans=cnt if ans<cnt
}
p ans