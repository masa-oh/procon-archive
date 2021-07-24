s=4.times.map{gets.chomp}
ptn=%w[H 2B 3B HR]
ans=true
ptn.each{|v|
  if !s.include?(v)
    ans=false; break 
  end
}
puts ans ? :Yes : :No