#!/usr/bin/env ruby
require "prime"
n = gets.to_i
ans = 0
primes = Prime.each(10**6).to_a
m = primes.size

(0..m - 3).each do |i|
  (i + 1..m - 2).each do |j|
    break if primes[i]**2 * primes[j] * primes[j + 1]**2 > n

    k =
      (j + 1..m - 1).bsearch do |k|
        primes[i]**2 * primes[j] * primes[k]**2 > n
      end || m
    ans += k - j - 1
  end
end

p ans
