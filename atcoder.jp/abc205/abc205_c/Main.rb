A,B,C = gets.split.map(&:to_i)

if A<0 && B>=0 && C.odd?
  puts '<'
elsif A>=0 && B<0 && C.odd?
  puts '>'
elsif A.abs < B.abs
  puts '<'
elsif A.abs > B.abs
  puts '>'
else
  puts '='
end