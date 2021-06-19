N = gets.to_i
case (N * 1.08).to_i <=> 206
when -1
  puts 'Yay!'
when 0
  puts 'so-so'
when 1
  puts ':('
end