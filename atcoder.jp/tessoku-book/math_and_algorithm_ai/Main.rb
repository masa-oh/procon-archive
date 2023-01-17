#!/usr/bin/env ruby
(N, Q), A, *LR = $<.map { _1.split.map(&:to_i) }
acc = [0]
A.each { |a| acc << acc[-1] + a }
LR.each { |l, r| puts acc[r] - acc[l - 1] }
