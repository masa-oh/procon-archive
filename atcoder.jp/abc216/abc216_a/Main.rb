x,y=gets.chomp.split('.').map &:to_i
puts"#{x}#{y.between?(0,2) ? '-' : y.between?(3,6) ? '' : '+'}"