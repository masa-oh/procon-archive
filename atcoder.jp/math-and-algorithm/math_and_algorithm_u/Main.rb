def nCr(n,r)
  r.times.map{|i|n-i}.inject(:*) / (1..r).inject(:*)
end

n,r=gets.split.map &:to_i
p nCr(n,r)