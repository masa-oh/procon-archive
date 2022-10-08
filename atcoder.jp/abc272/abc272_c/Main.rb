n,*a=$<.read.split.map &:to_i
a.sort!.reverse!
ans=-1
max_even=[-1,-1]
max_odd=[-1,-1]
a.each{|v|
  if v.odd?
    if max_odd[0] < 0
      max_odd[0] = v
    elsif max_odd[1] < 0
      max_odd[1] = v
    end
  else
    if max_even[0] < 0
      max_even[0] = v
    elsif max_even[1] < 0
      max_even[1] = v
    end
  end
}

ans = [max_odd.sum, ans].max if max_odd.all?{_1>=0}
ans = [max_even.sum, ans].max if max_even.all?{_1>=0}
p ans