s=gets.chomp.chars.map &:to_i
(0..9).each{|i|puts i if !s.include?(i)}