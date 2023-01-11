#!/usr/bin/env ruby
n, x, *a = $<.read.split.map &:to_i
puts a.include?(x) ? :Yes : :No
