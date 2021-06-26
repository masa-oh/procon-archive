a,b,c,d=gets.split.map(&:to_i)
cnt=(1..10**9).bsearch {|i| b*i+a <= d*c*i}
puts cnt||=-1