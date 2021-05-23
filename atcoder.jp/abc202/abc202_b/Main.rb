S = gets.chomp;
array = []

S.split('').map(&:to_i).reverse_each do |s|
  s = case s
      when 0, 1, 8 then
        s
      when 6 then
        9
      when 9 then
        6
      end
  array.push(s)
end

puts array.join