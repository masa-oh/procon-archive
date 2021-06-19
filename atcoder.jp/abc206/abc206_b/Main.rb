N=gets.to_i

puts (1..N).bsearch{|i|
       (1..i).sum >= N
     }