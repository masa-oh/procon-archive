a,b=gets.split.map &:to_i
puts ((a-b).abs==1 || (a-b).abs==9) ? :Yes : :No