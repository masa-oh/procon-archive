s=gets.chomp.chars
a,b=gets.split.map{_1.to_i-1}
s[a],s[b]=s[b],s[a]
puts s.join