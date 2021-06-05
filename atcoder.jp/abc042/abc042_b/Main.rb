N,_=gets.split.map(&:to_i)
arr = []
N.times do
  arr.push gets.chomp
end
puts arr.sort.join