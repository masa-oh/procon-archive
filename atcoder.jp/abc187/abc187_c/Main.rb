require 'set'

_=gets.to_i
ss=Set.new($<.map{_1.chomp})

ss.each{|s|
  if ss.include?("!#{s}")
    puts s; exit
  end
}

puts 'satisfiable'