n,m=gets.split.map &:to_i
a=n.times.map{gets.chomp.chars}
b=m.times.map{gets.chomp.chars}

ans = false
(n-m+1).times.map do |i|
  (n-m+1).times.map do |j|
    flgs = []
    m.times.map do |k|
      m.times.map do |l|
        flgs << (a[i+k][j+l] == b[k][l])
      end
    end
    ans = true if flgs.all?
  end
end

puts ans ? :Yes : :No