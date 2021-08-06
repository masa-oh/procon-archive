n=gets.to_i
(1..50000).each{|i|
  if (i*1.08).floor==n
    puts i; break
  elsif (i*1.08).floor>n
    puts ":("; break
  end
}