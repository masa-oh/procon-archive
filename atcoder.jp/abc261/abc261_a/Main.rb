l1, r1, l2, r2 = gets.split.map &:to_i
p [([*l1..r1]&[*l2..r2]).size - 1, 0].max