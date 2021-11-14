abcd=$<.map{_1.split.map &:to_i}
d=abcd.map.with_index{|item,i|a,b,c,d=item; [(400-a).abs+(400-b).abs, (400-c).abs+(400-d).abs, i+1]}
d=d.sort_by{|d1,d2,idx|d1+d2}[0,50]
abcd=d.map{|d1,d2,idx|abcd[idx-1] << idx}

r=abcd.transpose[4]
picked=r.map{[_1,false]}.to_h
que=Hash.new{|h,k|h[k]=false}
xy=[]
list=abcd.map{|a,b,c,d,idx|[a,b,idx,:restaurant]}+abcd.map{|a,b,c,d,idx|[c,d,idx,:destination]}
restaurants=list.map{|v1,v2,idx,type|[idx,[v1,v2]] if type==:restaurant}.compact.to_h
destinations=list.map{|v1,v2,idx,type|[idx,[v1,v2]] if type==:destination}.compact.to_h
x=y=400
while list.size>0
  list.sort_by!{|v1,v2,idx,type|(x-v1).abs+(y-v2).abs}
  d,idx,type=list[0].then{|v1,v2,idx,type|[(x-v1).abs+(y-v2).abs, idx, type]}
  if keys=que.keys
    tmp=keys.map{|idx|destinations[idx].then{|v1,v2|[(x-v1).abs+(y-v2).abs, idx]} if picked[idx]}.compact
    if tmp.size>0
      tmp.sort_by!{|d,idx|d}
      if tmp[0][0]<d
        d,idx=tmp[0]
        type=:destination
        que.delete(idx)
      else
        list.delete_at(0)
      end
    else
      list.delete_at(0)
    end
  else
    list.delete_at(0)
  end
  case type
  when :restaurant
    x,y=restaurants[idx]
    xy << x << y
    picked[idx]=true
  when :destination
    x,y=destinations[idx]
    picked[idx] ? xy << x << y : que[idx]=true
  end
end

que.keys.size.times do
  tmp=que.keys.map{|idx|destinations[idx].then{|v1,v2|[(x-v1).abs+(y-v2).abs, idx]}}.compact
  tmp.sort_by!{|d,idx|d}
  d,idx=tmp[0]
  que.delete(idx)
  x,y=destinations[idx]
  xy << x << y
end

r.unshift r.size
xy=[400,400].concat(xy).concat([400,400])
xy.unshift xy.size/2
puts r*' '
puts xy*' '