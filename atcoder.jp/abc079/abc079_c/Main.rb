a,b,c,d=gets.chomp.chars.map &:to_i
[:+,:-].repeated_permutation(3).each{|ope1,ope2,ope3|
  next if a.send(ope1, b).send(ope2, c).send(ope3, d) != 7
  break puts "#{a}#{ope1}#{b}#{ope2}#{c}#{ope3}#{d}=7"
}