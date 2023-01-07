#!/usr/bin/env ruby
N, *A = $<.read.split.map &:to_i

gcd = A.inject(A[0], :gcd)
ans = 0

A.each do |a|
  a /= gcd
  while a % 2 == 0
    ans += 1
    a /= 2
  end

  while a % 3 == 0
    ans += 1
    a /= 3
  end

  if a != 1
    ans = -1
    break
  end
end

p ans
