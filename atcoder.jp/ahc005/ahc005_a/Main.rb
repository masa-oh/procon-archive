N,Si,Sj=gets.split.map &:to_i
C=$<.map{_1.chomp.chars}

def move_up(i,j,ans,counter=0)
  if i>0 && C[i-1][j]!='#'
    ans << 'U'
    move_up(i-1,j,ans,counter+1)
  else
    counter.times.map{ans << 'D'}
  end
end

def move_down(i,j,ans,counter=0)
  if i<N-1 && C[i+1][j]!='#'
    ans << 'D'
    move_down(i+1,j,ans,counter+1)
  else
    counter.times.map{ans << 'U'}
  end
end

def move_left(i,j,ans,counter=0)
  if j>0 && C[i][j-1]!='#'
    ans << 'L'
    move_left(i,j-1,ans,counter+1)
  else
    counter.times.map{ans << 'R'}
  end
end

def move_right(i,j,ans,counter=0)
  if j<N-1 && C[i][j+1]!='#'
    ans << 'R'
    move_right(i,j+1,ans,counter+1)
  else
    counter.times.map{ans << 'L'}    
  end
end

ans=[]
move_up(Si,Sj,ans)
move_down(Si,Sj,ans)
move_left(Si,Sj,ans)
move_right(Si,Sj,ans)
puts ans*''