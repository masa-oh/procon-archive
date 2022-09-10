s=gets.chomp.chars.map(&:to_i)

return puts :No if s[0]==1

# 0なら全部倒れている
rows = [
  s[6],
  s[3],
  s[1] | s[7],
  s[0] | s[4],
  s[2] | s[8],
  s[5],
  s[9]
]

puts (rows*'').to_s=~/.*1.*0.*1.*/ ? :Yes : :No