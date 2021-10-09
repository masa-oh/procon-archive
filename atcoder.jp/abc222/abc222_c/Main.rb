n,m=gets.split.map &:to_i
a=$<.read.split.map &:chars

h=(0...2*n).map{[_1,0]}.to_h

def janken(p1, p2)
  case p1
  when ?G
    if p2==?G; :draw
    elsif p2==?C; :win
    elsif p2==?P; :lose
    end
  when ?C
    if p2==?C; :draw
    elsif p2==?P; :win
    elsif p2==?G; :lose
    end
  when ?P
    if p2==?P; :draw
    elsif p2==?G; :win
    elsif p2==?C; :lose
    end
  end
end

m.times{|i|
  # 対戦カード決め
  order=[]
  wins=h.values.uniq.sort.reverse
  wins.each{|x|order.concat(h.select{|k,v|v==x}.keys)}
  (1..n).each{|j|
    # 勝敗判定
    case janken(a[order[2*j-2]][i], a[order[2*j-1]][i])
    when :win
      h[order[2*j-2]]+=1
    when :draw
    when :lose
      h[order[2*j-1]]+=1
    end
  }
}

order=[]
wins=h.values.uniq.sort.reverse
wins.each{|x|order.concat(h.select{|k,v|v==x}.keys)}
order.each{puts _1+1}