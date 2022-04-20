x=gets.split.map(&:to_i).sort
puts x.pop==x.sum ? :Yes : :No