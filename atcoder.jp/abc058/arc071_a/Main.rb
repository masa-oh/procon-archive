gets
S=$<.map{_1.chomp.chars}
h=S[0].tally
S.each{|s|
  h=h.map{|k,v|[k, [s.count(k), v].min]}.to_h
}
puts (?a..?z).map{|c|c*(h[c]||0)}*''