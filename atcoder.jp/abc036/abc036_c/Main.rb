n,*a=$<.read.split.map &:to_i
vals=a.sort.uniq
puts a.map{|x|vals.bsearch_index{|y|x<=y}}