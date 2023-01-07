#!/usr/bin/env ruby
N, *P = $<.read.split.map &:to_i
i = N - 2
i -= 1 while P[i] < P[i + 1]

j = N - 1
j -= 1 while P[i] < P[j]

P[i], P[j] = P[j], P[i]
puts [*P[..i], *P[i + 1..].sort.reverse] * " "
