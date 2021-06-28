_=gets.to_i
s=gets.chomp
 
if s[0]!=s[-1]
  puts 1
else
  puts s.split(s[0]).map{_1.size}.max.to_i>=2 ? 2 : -1
end