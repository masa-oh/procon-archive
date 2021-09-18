xs=gets.chomp.chars
n=gets.to_i
ss=$<.read.split
alps=[*'a'..'z'].map.with_index{|x,i|[i,x]}.to_h
xs=xs.map.with_index{|x,i|[x,i]}.to_h
ss.sort_by! {|s|
  s.chars.map{alps[xs[_1]]}*''
}
puts ss