N = gets.to_i
A = $<.map { _1.chomp.chars }
flg = true

N.times.map do |i|
  N.times.map do |j|
    next if i == j

    case A[i][j]
    when ?D
      next if A[j][i] == ?D
    when ?L
      next if A[j][i] == ?W
    when ?W
      next if A[j][i] == ?L
    end
    
    break flg = false
  end
end

puts flg ? :correct : :incorrect