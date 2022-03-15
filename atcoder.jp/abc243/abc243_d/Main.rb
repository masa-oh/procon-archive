n,x=gets.split.map &:to_i
s=gets.chomp
x=x.to_s(2)
s.chars.each{|c|
  case c
  when ?U; x.chop!
  when ?L; x << ?0
  when ?R; x << ?1
  end
}
puts x.to_i(2)