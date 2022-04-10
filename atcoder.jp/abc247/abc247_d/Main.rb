q=gets.to_i
que=[]
ans=[]
q.times{|i|
  type,*xc=gets.split.map &:to_i
  case type
  when 1
    x,c=xc
    que << [x,c]
  when 2
    c,=xc
    tmp=0
    while c>0
      x0,c0=que.shift
      if c-c0>=0
        c-=c0
        tmp+=x0*c0
      else
        c0-=c
        tmp+=x0*c
        que.unshift([x0,c0])
        break
      end
    end
    ans << tmp
  end
}
puts ans