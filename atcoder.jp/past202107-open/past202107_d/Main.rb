N=gets.to_i
S=gets.chomp
T=%w[axa ixi uxu exe oxo]
T.each{|t|
  S.gsub!(t, '...')
}
puts S