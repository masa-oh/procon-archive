h,w=gets.split.map &:to_i
c=$<.map{_1.chomp.chars}

dp=Array.new(h){Array.new(w,0)}
dp[0][0]=1

# 配るDP
(0..h-1).each{|i|
  (0..w-1).each{|j|
    if c[i][j]=='.' && dp[i][j]>0
      if i<h-1
        if c[i+1][j]=='.'
          dp[i+1][j]=[dp[i][j]+1, dp[i+1][j]].max
        else
          dp[i+1][j]=0
        end
      end
      if j<w-1      
        if c[i][j+1]=='.'
          dp[i][j+1]=[dp[i][j]+1, dp[i][j+1]].max
        else
          dp[i][j+1]=0
        end
      end
    end
  }
}

p dp.flatten.max