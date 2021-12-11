k=gets.to_i
s,t=$<.map{_1.chomp.chop}
h=(1..9).map{[_1,k]}.to_h
s.chars.each{h[_1.to_i]-=1}
t.chars.each{h[_1.to_i]-=1}

def score(str)
  cnt=str.chars.map(&:to_i).tally
  (1..9).sum{|i|
    i*(10**(cnt[i]||0))
  }
end

win=0
(1..9).each{|i|
  (1..9).each{|j|
    if score(s+i.to_s) > score(t+j.to_s)
      win+=(i!=j ? h[i]*h[j] : h[i]*(h[j]-1))
    end
  }
}

p win.to_f/(9*k-8)/(9*k-9)