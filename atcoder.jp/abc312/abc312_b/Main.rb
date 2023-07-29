#!/usr/bin/env ruby
N, M = gets.split.map &:to_i
S = $<.map &:chomp

ans = []

(0..N - 9).each do |i|
  (0..M - 9).each do |j|
    flg = [
      S[i][j], S[i+1][j], S[i+2][j],
      S[i][j+1], S[i+1][j+1], S[i+2][j+1],
      S[i][j+2], S[i+1][j+2], S[i+2][j+2]
    ].all? { _1 == ?# } && [
      S[i+3][j], S[i+3][j+1], S[i+3][j+2],
      S[i][j+3], S[i+1][j+3], S[i+2][j+3], S[i+3][j+3]
    ].all? { _1 == ?. } && [
      S[i+6][j+6], S[i+7][j+6], S[i+8][j+6],
      S[i+6][j+7], S[i+7][j+7], S[i+8][j+7],
      S[i+6][j+8], S[i+7][j+8], S[i+8][j+8]
    ].all? { _1 == ?# } && [
      S[i+5][j+5], S[i+6][j+5], S[i+7][j+5], S[i+8][j+5],
      S[i+5][j+6], S[i+5][j+7], S[i+5][j+8]
    ].all? { _1 == ?. }

    ans << [i + 1, j + 1] if flg
  end
end

puts ans.map { _1.join(" ") }