gets
s = gets.chomp
puts s.scan(/\|.*\|/)[0].include?('*') ? 'in' : 'out'