#!/usr/bin/env ruby
n, *a = $<.read.split.map &:to_i
flg = false
(0..n - 3).each do |i|
  (i + 1..n - 2).each do |j|
    (j + 1..n - 1).each { |k| flg = true if a[i] + a[j] + a[k] == 1000 }
  end
end
puts flg ? :Yes : :No
