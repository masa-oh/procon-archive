N,L=gets.split.map &:to_i
K=gets.to_i
A=gets.split.map &:to_i

A << L
ans=(1..L).bsearch{|l|
  prev=0
  cnt=0
  A.each{|a|
    if a-prev>=l
      prev=a
      cnt+=1
    end
  }
  cnt<=K
}

puts ans-1