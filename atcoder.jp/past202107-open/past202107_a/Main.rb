S=gets.chomp.chars.map &:to_i
sum=0
(0..13).each{|i|
  sum += i.even? ? S[i]*3 : S[i]
}
puts sum%10==S[-1] ? :Yes : :No