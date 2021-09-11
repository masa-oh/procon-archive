s=[*'a'..'z']
p=gets.split.map &:to_i
puts p.map{s[_1-1]}*''