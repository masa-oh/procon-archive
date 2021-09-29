require 'prime'

n,m,*a=$<.read.split.map &:to_i
h=a.tally
ans=[*1..m]

Prime.each(10**5){|i|
  (0..10**5/i).each{|j|
    if h[i*j]
      (1..m/i).each{|k|ans[i*k-1]=0}
      break
    end
  }
}
ans.delete(0)
puts ans.size
puts ans