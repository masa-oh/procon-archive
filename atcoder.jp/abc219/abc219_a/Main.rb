n=gets.to_i
if n.between?(0,39); puts 40-n
elsif n.between?(40,69); puts 70-n
elsif n.between?(70,89); puts 90-n
else; puts :expert
end