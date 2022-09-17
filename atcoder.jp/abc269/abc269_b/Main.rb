s=$<.map{_1.chomp.chars}
first=[]
last=[]
10.times{|i|
  10.times{|j|
    first = [i, j] if first.empty? && s[i][j]=='#'
    last = [i, j] if s[i][j]=='#'
  }
}
puts [first[0]+1, last[0]+1]*' '
puts [first[1]+1, last[1]+1]*' '