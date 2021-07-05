n,k=gets.split.map &:to_i
as=gets.split.map(&:to_i).each_with_index.sort
ans=Array.new(n,k/n)

i=0
while i<k%n
  ans[as[i][1]]+=1
  i+=1
end

puts ans