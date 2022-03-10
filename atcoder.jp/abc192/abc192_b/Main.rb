u=/[A-Z]/
l=/[a-z]/
s=gets.chomp
puts (0...s.size).all?{|i|i.odd? ? s[i]=~u : s[i]=~l} ? :Yes : :No