n=gets.to_i
puts gets.chomp.gsub(/[AB]+/){_1.chars.sort.join.gsub('BB','A')}