x,t = gets.chomp.split(' ').map(&:to_i)
puts x-t > 0 ? x-t : 0