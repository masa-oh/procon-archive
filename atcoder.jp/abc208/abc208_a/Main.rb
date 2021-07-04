a,b=gets.split.map &:to_i
puts b.between?(a, 6*a) ? 'Yes' : 'No'