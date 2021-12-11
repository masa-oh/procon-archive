n=gets.to_i
puts $<.map(&:chomp).tally.sort_by{|_,v|-v}.to_h.keys[0]