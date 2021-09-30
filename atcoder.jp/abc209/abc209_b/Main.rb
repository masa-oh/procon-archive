n,x,*a=$<.read.split.map &:to_i
puts a.sum-n/2<=x ? 'Yes' : 'No'