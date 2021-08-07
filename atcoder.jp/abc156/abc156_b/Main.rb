n,k=gets.split.map &:to_i
p (0..40).bsearch{|i|n<k**i}