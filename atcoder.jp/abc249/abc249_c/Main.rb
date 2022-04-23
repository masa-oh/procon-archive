n,k=gets.split.map &:to_i
s=$<.map{_1.chomp.chars}
ans=0
[0,1].repeated_permutation(n).each{|ary|
  strs=[]
  ary.each_with_index{|bit,idx|
    strs.concat s[idx] if bit==1
  }
  ans = [ans, strs.tally.values.count(k)].max
}
p ans