a,b=gets.split
a=sprintf("%019d", a).chars
b=sprintf("%019d", b).chars
puts a.zip(b).all?{|i,j|i.to_i+j.to_i<10} ? :Easy : :Hard