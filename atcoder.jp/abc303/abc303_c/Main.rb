#!/usr/bin/env ruby
require "set"
n, m, h, k = gets.split.map &:to_i
s = gets.chomp.chars
xy = Set.new($<.map { _1.split.map(&:to_i) })

flg = true
now = [0, 0]
s.each do |c|
  case c
  when "R"
    now[0] += 1
  when "U"
    now[1] += 1
  when "D"
    now[1] -= 1
  when "L"
    now[0] -= 1
  end

  h -= 1
  break flg = false if h < 0

  if h < k && xy.include?(now)
    xy.delete(now)
    h = k
  end
end

puts flg ? :Yes : :No
