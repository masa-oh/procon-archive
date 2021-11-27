s=gets.chomp
k=gets.to_i
n=s.size
dp=Array.new(n,0)

ary=[]
dot_size=0

(0..n-1).each{|i|
  case s[i]
  when ?X
    ary << ?X
    i>0 ? dp[i]=dp[i-1]+1 : dp[i]=1
  else
    ary << '.'
    dot_size+=1
    tmp=0
    while dot_size>k
      dot_size-=1 if ary.shift=='.'
      tmp+=1
    end
    i>0 ? dp[i]=dp[i-1]+1-tmp : dp[i]=1-tmp
  end
}
 
puts dp.max