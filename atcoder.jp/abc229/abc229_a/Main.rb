s=$<.map{_1.chomp.chars}.flatten
puts (s[1]==s[2] && s[0]==s[3] && !s.all?('#')) ? :No : :Yes