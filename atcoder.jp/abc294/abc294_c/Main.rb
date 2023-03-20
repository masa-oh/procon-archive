#!/usr/bin/env ruby
(N, M), A, B = $<.map { _1.split.map(&:to_i) }
arr =
  (A + B)
    .map
    .with_index
    .sort_by { |v, i| v }
    .map
    .with_index { |(v, pi), i| [pi, i + 1] }
    .sort_by { |pi, i| pi }
    .transpose[
    1
  ]
puts arr[...N] * " "
puts arr[N..] * " "
