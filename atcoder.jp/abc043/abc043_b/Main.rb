s=gets.chomp
ans=''
s.chars.each{|x|x=='B' ? ans.chop! : ans+=x}
puts ans