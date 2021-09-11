n=gets.to_i
s=n.times.map{gets.chomp.chars}
t=n.times.map{gets.chomp.chars}

trues=[]
s.each_with_index{|line,idx|
  trues << idx if line.include?('#')
}
s=s[(trues.min)..(trues.max)]

trues=[]
s=s.map(&:reverse).transpose
s.each_with_index{|line,idx|
  trues << idx if line.include?('#')
}
s=s[(trues.min)..(trues.max)]

trues=[]
t.each_with_index{|line,idx|
  trues << idx if line.include?('#')
}
t=t[(trues.min)..(trues.max)]

trues=[]
t=t.map(&:reverse).transpose
t.each_with_index{|line,idx|
  trues << idx if line.include?('#')
}
t=t[(trues.min)..(trues.max)]

t_1=t.map(&:reverse).transpose
t_2=t_1.map(&:reverse).transpose
t_3=t_2.map(&:reverse).transpose

case s
when t,t_1,t_2,t_3
  puts :Yes
else
  puts :No
end