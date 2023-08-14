(N,), A, (Q,), *qs = $<.map {_1.split.map &:to_i}
qs.each do |t,k,x|
  case t
  when 1
    A[k-1] = x
  when 2
    puts A[k-1]
  end
end