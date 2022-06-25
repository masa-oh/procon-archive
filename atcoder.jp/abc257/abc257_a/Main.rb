n,x=gets.split.map &:to_i
puts [*?A..?Z][(x*1.0/n).ceil-1]