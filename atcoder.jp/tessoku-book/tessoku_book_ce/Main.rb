#!/usr/bin/env ruby
(N,), A, (Q,), *LR = $<.map { _1.split.map(&:to_i) }
S = [0]
N.times { |i| S[i + 1] = S[i] + A[i] }
LR.each { |l, r| puts %w[draw lose win][r - l + 1 <=> (S[r] - S[l - 1]) * 2] }
