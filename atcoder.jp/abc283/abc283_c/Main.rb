S = gets.to_s
c = S.size
ans = 0

i = 0
while i <= c - 2
  ans += 1
  if S[i] == ?0 && i+1 < c && S[i+1] == ?0
    i += 2
  else
    i += 1
  end
end

p ans