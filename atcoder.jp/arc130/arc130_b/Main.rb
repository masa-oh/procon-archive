(h,w,c,q),*tnc=$<.map{_1.split.map &:to_i}
colors=c.times.map{[_1,0]}.to_h # 各色が使われているマスの数を管理
done1={}
done2={}

i=q-1
while i>=0
  case tnc[i][0]
  when 1
    if !done1[tnc[i][1]-1]
      colors[tnc[i][2]-1]+=w
      done1[tnc[i][1]-1]=true
      h-=1
    end
  when 2
    if !done2[tnc[i][1]-1]
      colors[tnc[i][2]-1]+=h
      done2[tnc[i][1]-1]=true
      w-=1
    end
  end
  i-=1
end
puts colors.values*' '