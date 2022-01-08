def dfs(patterns)
  # スタックとなる配列を用意し、初期状態である空文字列を格納する
  stack = [*'0'..'9']
  until stack.empty?
    # スタックから1つ取り出す（末尾から取り出すのでpopを使う）
    string = stack.pop

    # 文字列を配列に格納する
    patterns << string unless string.empty?

    # 停止条件: 文字列長が18文字になること
    if string.size == 18
    elsif string.size == 1 && string!='0'
      (-9..9).each{|i|
        if (j=string.to_i-i).between?(0,9)
          stack << string + j.to_s
        end
      }
    else
      if (i=string[-1].to_i-(string[0].to_i-string[1].to_i)).between?(0,9)
        stack << string + i.to_s
      end
    end
  end
end

patterns = [] # 結果を格納する配列を用意しておく
dfs(patterns)
patterns=patterns.map(&:to_i).sort
x=gets.to_i
p patterns.bsearch{_1>=x}