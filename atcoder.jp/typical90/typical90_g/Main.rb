n=gets.to_i
a=gets.split.map(&:to_i).sort
q=gets.to_i
b=$<.map &:to_i

b.each{|bb|
  i = a.bsearch_index{bb<=_1} || n-1
  puts [(a[i]-bb).abs, (bb-a[i-1]).abs].min
}