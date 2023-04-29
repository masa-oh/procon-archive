#!/usr/bin/env ruby
n, a, b, *c = $<.read.split.map &:to_i
p c.index { a + b == _1 } + 1
