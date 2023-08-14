S = gets.chomp
box = Hash.new(-1)
brackets = []
ans = true
S.chars.each_with_index do |s, i|
  case s
  when ?(
    brackets << i
  when ?)
    idx = brackets.pop
    box.filter { |k, v| idx < v }.keys.each do |k|
      box[k] = -1
    end
  else
    if box[s] >= 0
      ans = false
      break
    else
      box[s] = i
    end
  end
  # p box
end

puts ans ? :Yes : :No