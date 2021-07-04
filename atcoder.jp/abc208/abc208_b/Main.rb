p=gets.to_i

coins=Array.new(10, 0)
(1..10).each {|i|
  coins[i]=(1..i).inject(:*)
}
coins.sort!.reverse!

ans=0
while p!=0
 tmp=coins.bsearch{|coin| coin<=p }
 p-=tmp
 ans+=1
end

puts ans