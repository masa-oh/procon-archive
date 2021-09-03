a,b,w=gets.split.map &:to_i
min=(w*1000.0/b).ceil
max=w*1000/a
puts min<=max ? [min,max]*' ' : :UNSATISFIABLE