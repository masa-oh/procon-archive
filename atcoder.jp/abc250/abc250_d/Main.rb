require 'prime'
n=gets.to_i
ans=0
ps=Prime.each(10**6).to_a
(0..ps.size-2).map{|i|
  (i+1..ps.size-1).map{|j|
    tmp = ps[i] * (ps[j] ** 3)
    if tmp <= n
      ans+=1
    elsif tmp > n
      break
    end
  }
}
p ans