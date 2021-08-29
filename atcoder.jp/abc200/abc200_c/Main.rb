n,*a=$<.read.split.map &:to_i
p a.map{_1%200}.tally.select{_2>1}.values.sum{_1*(_1-1)/2}