s=gets.chomp
pat='ABC'
f = ->(t,k) {
  if t==0
    pat.index(s[k])
  elsif k==0
    pat.index(s[0])+t
  else
    k.odd? ? f[t-1,k/2]+2 : f[t-1,k/2]+1
  end
}
gets
$<.map{
  t,k=_1.split.map &:to_i
  puts pat[f[t,k-1]%3]
}