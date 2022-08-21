h,w=gets.split.map &:to_i
g=$<.map{_1.chomp.chars}
i=j=0
cnt=0
lim=h*w+10
while 0<=i && i<h && 0<=j &&j<w && cnt<lim
  case g[i][j]
  when ?U; i-=1
  when ?D; i+=1
  when ?R; j+=1
  when ?L; j-=1
  end
  cnt+=1
end

i=[i,0].max
i=[i,h-1].min
j=[j,0].max
j=[j,w-1].min
puts cnt<lim ? "#{i+1} #{j+1}" : -1