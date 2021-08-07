n,a,b=gets.split.map &:to_i
p (1..n).select{_1.digits.sum.between?(a,b)}.sum