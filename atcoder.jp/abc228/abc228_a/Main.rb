s,t,x=gets.split.map &:to_i
t+=24 if s>t
puts (x.between?(s,t-1) || (x+24).between?(s,t-1)) ? :Yes : :No