#!/usr/bin/env ruby
_n, *as = $<.read.split.map &:to_i
puts as.select { |a| a.even? } * " "
