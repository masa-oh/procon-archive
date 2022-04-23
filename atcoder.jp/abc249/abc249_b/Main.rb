s=gets.chomp
puts (s=~/[A-Z]/ && s=~/[a-z]/ && s.chars.tally.values.max==1) ? :Yes : :No