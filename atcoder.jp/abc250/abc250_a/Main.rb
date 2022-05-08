h,w,r,c=$<.read.split.map &:to_i
ans=4
ans-=1 if r==1
ans-=1 if r==h
ans-=1 if c==1
ans-=1 if c==w
p ans