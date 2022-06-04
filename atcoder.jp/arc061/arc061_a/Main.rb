s=gets.chomp.chars
p [p, true].repeated_permutation(s.size-1).sum{|ary|
  tmp=0
  ptr=0
  ary.each_with_index{|bit, idx|
    next unless bit
    tmp += s[ptr..idx].join.to_i
    ptr = idx + 1
  }
  tmp + s[ptr..].join.to_i
}