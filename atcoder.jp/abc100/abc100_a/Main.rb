#!/usr/bin/env ruby
A,B = gets.split.map(&:to_i)
puts A<=8&&B<=8 ? 'Yay!' : ':('