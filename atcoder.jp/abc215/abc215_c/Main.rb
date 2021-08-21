s,k=gets.split
s=s.chars
k=k.to_i
puts s.permutation.to_a.sort.uniq[k-1]*''