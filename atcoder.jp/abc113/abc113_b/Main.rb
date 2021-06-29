N=gets.to_i
T,A=gets.split.map &:to_i
H=gets.split.map &:to_i

def temperature(h)
  T - h * 0.006
end

ans=[10**9, 0] #[ Aとの温度差, インデックス ]
H.each_with_index{|h,idx|
  diff = (A-temperature(h)).abs
  if ans[0] >= diff
    ans= [diff,idx]
  end
}
puts ans[1]+1