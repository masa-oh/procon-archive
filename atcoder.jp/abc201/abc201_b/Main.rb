_=gets.to_i
st=$<.map{_1.chomp.split}.sort_by!{-_2.to_i}
puts st[1][0]