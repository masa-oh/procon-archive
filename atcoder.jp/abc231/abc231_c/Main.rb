gets
a=gets.split.map(&:to_i).sort.reverse
xs=$<.map &:to_i
xs.each{|x|
  puts a.bsearch_index{_1<x}||a.size
}