n=gets.to_i;s=gets.chomp.chars;gets
tab=$<.map{_1.split.map &:to_i}
r=false
tab.each{|t,a,b|
  case t
  when 1
    if r
      a = a>n ? a-n : a+n
      b = b>n ? b-n : b+n
    end
    sa=s[a-1]
    sb=s[b-1]
    s[a-1]=sb
    s[b-1]=sa
  when 2
    r=!r
  end
}
s.concat s.shift(n) if r
puts s*''