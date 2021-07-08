n=gets.to_i
x=gets.split.map &:to_i

puts (x.min..x.max).map{|p|
       x.map{(_1-p)**2}.sum
     }.min