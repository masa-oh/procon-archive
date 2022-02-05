(t,),*as=$<.map{_1.split.map &:to_i}
as.each{|a,s|
  y=s-(a<<1)
  puts (y>=0 && a&y==0) ? :Yes : :No
}