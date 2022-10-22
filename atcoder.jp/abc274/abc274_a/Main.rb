a,b=gets.split.map &:to_i
x=(b*1.0/a).round(3)
puts sprintf("%.3f", x)