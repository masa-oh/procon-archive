require 'prime'
a,b,c,d=gets.split.map &:to_i
flg=false
(a..b).each{|x|
  flg=true if (c..d).map{|y|x+y}.all?{!Prime.prime?(_1)}
}
puts flg ? :Takahashi : :Aoki