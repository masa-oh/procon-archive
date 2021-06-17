#!/usr/bin/env ruby
D,N=gets.split.map(&:to_i)
puts N==100 ? 101*(100**D) : N*(100**D)
