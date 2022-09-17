x=gets.to_i
nums=x.to_s(2).reverse.chars.map.with_index{|d,i|
  2**i if d==?1
}.compact

ans=[0]
s=nums.size
(puts ans; exit) if s==0

(1..s).each{|i|
  nums.combination(i).each{|cs|
    ans << cs.sum
  }
}
puts ans.sort