gets
v=$<.map{_1.split.map &:to_i}.repeated_permutation(2).map{|(x1,y1),(x2,y2)|(x1-x2)**2 + (y1-y2)**2}.max
puts Math.sqrt v