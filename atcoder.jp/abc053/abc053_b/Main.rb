s=gets.chomp.chars
puts s.size-s.reverse.index('Z')-s.index('A')