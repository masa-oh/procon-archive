s=gets.chomp
t=s.chars.uniq.size
if t==1; p 1
elsif t==2; p 3
else; p 6
end