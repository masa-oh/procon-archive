n,x=gets.split.map &:to_i
ls=[]; as=[]
n.times{
  l,*a=gets.split.map &:to_i
  ls << l; as << a
}
p as.shift.product(*as).map{_1.inject(:*)}.count(x)