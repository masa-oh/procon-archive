n=gets.to_i
puts n<10 ? "AGC00#{n}" : n<42 ? "AGC0#{n}" : "AGC0#{n+1}"