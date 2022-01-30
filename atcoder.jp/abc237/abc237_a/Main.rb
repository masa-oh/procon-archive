n=gets.to_i
puts n.between?(-2**31, 2**31-1) ? :Yes : :No