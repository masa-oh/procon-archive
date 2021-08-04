s=gets.chomp.chars
(1...s.size).select{_1.even?}.reverse_each{|i|
  (puts i; break) if s[0...i/2]==s[i/2...i]
}