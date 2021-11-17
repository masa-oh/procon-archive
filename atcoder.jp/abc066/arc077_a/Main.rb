n,*a=$<.read.split.map &:to_i
n.times{|i|(i+n).odd?? $*.unshift(a[i]):$*<<a[i]}
puts $*