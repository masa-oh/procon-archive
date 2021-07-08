n,a,b=gets.split.map &:to_i
s=gets.chomp.chars
passed={a:0,b:0}
ans=Array.new(n,'No')

s.each_with_index{|str,idx|
  case str
  when 'a'
    passed[:a]+=1
    ans[idx]='Yes'
  when 'b'
    if passed[:b]<b
      passed[:b]+=1
      ans[idx]='Yes'
    end
  end
  break if passed.values.sum>=a+b
}
puts ans