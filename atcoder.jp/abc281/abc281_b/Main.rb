#!/usr/bin/env ruby
a, *b, c = gets.chomp.chars
flg =
  (a =~ /[A-Z]/) && (c =~ /[A-Z]/) && (b.size == 6) &&
    b.join.to_i.between?(100_000, 999_999)
puts flg ? "Yes" : "No"
