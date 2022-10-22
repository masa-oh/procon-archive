gets
puts $<.map{_1.chomp.chars}.transpose.map{_1.count(?#)}*' '