def kaibun?(s)
  s==s.reverse
end

s=gets.chomp.chars
n=s.size
flg=false
if kaibun?(s)
  flg=true
else
  while true
    if s[-1]==?a
      s.pop
      s.shift if s[0]==?a
    else
      break
    end
  end
  flg=true if kaibun?(s)
end
puts flg ? :Yes : :No