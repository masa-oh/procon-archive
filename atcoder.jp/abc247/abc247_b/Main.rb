require 'set'
n=gets.to_i
a,b=$<.map{_1.split}.transpose
flg1=true
flg2=true
n.times{|i|
  n.times{|j|
    next if i==j
    flg1=false if a[i]==a[j] || a[i]==b[j]
    flg2=false if b[i]==a[j] || b[i]==b[j]
  }
}
puts (flg1|flg2) ? :Yes : :No