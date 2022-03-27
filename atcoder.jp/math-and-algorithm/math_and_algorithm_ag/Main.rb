ax,ay,ar=gets.split.map &:to_i
bx,by,br=gets.split.map &:to_i

d=Math.sqrt((ax-bx)**2 + (ay-by)**2)

if d<(ar-br).abs
  puts 1
elsif d==(ar-br).abs
  puts 2
elsif d<ar+br
  puts 3
elsif d==ar+br
  puts 4
else
  puts 5
end