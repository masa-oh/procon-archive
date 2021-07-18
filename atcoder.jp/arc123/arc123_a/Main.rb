A=gets.split.map &:to_i

if (A[0]+A[2])%2==0
  ans=0
else
  ans=1
  (A[1]-A[0]).abs<(A[2]-A[1]).abs ? A[0]+=1 : A[2]+=1
end

c=(A[0]+A[2])/2

if A[1]>c
  ans+=(c-A[1]).abs*2
else
  ans+=(c-A[1]).abs
end

puts ans