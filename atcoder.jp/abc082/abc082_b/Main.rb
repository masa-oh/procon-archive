s,t=$<.map{_1.chomp.chars.sort.join}
puts s<t.reverse ? 'Yes' : 'No'