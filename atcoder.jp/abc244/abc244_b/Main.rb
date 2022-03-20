n=gets.to_i
mode=0
ans=[0,0]
gets.chomp.chars.each{|c|
  case c
  when ?S
    case mode
    when 0; ans[0]+=1
    when 1; ans[1]-=1
    when 2; ans[0]-=1
    when 3; ans[1]+=1
    end
  when ?R
    mode=(mode+1)%4
  end
}
puts ans*' '