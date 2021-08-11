s=gets.chomp.chars
a=[*'a'..'z']
puts (a-s.uniq).min||:None