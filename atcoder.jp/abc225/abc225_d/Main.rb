(n,q),*query=$<.map{_1.split.map &:to_i}
front=Array.new(n+1,-1) # idxの前部に連結している電車
back=Array.new(n+1,-1) # idxの後部に連結している電車

query.each{|i,x,y|
  case i
  when 1
    back[x]=y
    front[y]=x
  when 2
    back[x]=-1
    front[y]=-1
  when 3
    while front[x]>0
      x=front[x] # xの連結成分の先頭に移動
    end
    ans=[]
    while x>0
      ans << x
      x=back[x]
    end
    puts "#{ans.size} #{ans*' '}"
  end
}