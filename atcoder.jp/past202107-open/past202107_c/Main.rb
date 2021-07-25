S=gets.chomp
L,R=gets.split.map &:to_i
def check
  false
  return if S.size!=S.to_i.to_s.size
  return if !S.to_i.between?(L,R)
  true
end
puts check ? :Yes : :No