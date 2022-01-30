n=gets.to_i
s=gets.chomp.chars.reverse
ans=[n]
s.each_with_index{|c,i|
  case c
  when 'L'
    ans.push n-i-1
  when 'R'
    ans.unshift n-i-1
  end
}
puts ans