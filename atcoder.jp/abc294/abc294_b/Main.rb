#!/usr/bin/env ruby
(H, W), *A = $<.map { _1.split.map(&:to_i) }
h = ("A".."Z").map.with_index { |c, i| [c, i + 1] }.to_h.invert
h[0] = "."
A.each { |as| puts as.map { |a| h[a] } * "" }
