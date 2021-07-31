X=gets.chomp.chars.map &:to_i
ans=true

if X.uniq.size==1
  ans=false
elsif
  ans=(0..2).map{|i| (X[i]+1).digits[0]==X[i+1] ? true : false}.include?(false)
end

puts ans ? :Strong : :Weak