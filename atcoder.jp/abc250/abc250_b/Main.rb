n,a,b=gets.split.map &:to_i
n.times {|i|
  a.times {|j|
    line = ''
    n.times {|k|
      if i.odd?
        char = k.odd? ? '.' : '#'
      else
        char = k.odd? ? '#' : '.'
        end
      line += char * b
    }
    puts line
  }
}