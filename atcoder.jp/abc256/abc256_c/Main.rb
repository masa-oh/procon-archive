h1,h2,h3,w1,w2,w3=gets.split.map &:to_i
ans=0
(1..30).each{|a|
  (1..30).each{|b|
    (1..30).each{|d|
      (1..30).each{|e|
        c=h1-a-b
        f=h2-d-e
        g=w1-a-d
        h=w2-b-e
        i=w3-c-f
        next if [c,f,g,h,i].min <= 0
        ans+=1 if g+h+i==h3
      }
    }
  }  
}
p ans