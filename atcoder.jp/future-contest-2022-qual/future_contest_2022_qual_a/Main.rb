require 'tsort'

class Hash
  include TSort
  alias tsort_each_node each_key
  def tsort_each_child(node, &block)
    fetch(node).each(&block)
  end
end

def assign
  output=[]
  while true
    break if $members.size==0 || (t_s=$tasks.size)==0
    flg=false # これ以上実行できるタスクがないときにtrueになる
    t_s.times do |i|
      prevs=$depends[$tasks[i]]
      if prevs.empty? || prevs.all?{|j|$completed[j]}
        output << (m=$members.shift) << (t=$tasks.delete_at(i))
        $working[m]=t
        break
      else
        # ループの最後まで到達しても実行できるタスクがなかった場合、flgをtrueにする
        i==t_s-1 ? flg=true : next
      end
    end
    break if flg
  end

  s=output.size/2
  output.unshift s
  puts output*' '
  $>.flush
end

# 本処理

N,M,K,R=gets.split.map &:to_i
D=N.times.map{gets.split.map &:to_i}
UV=R.times.map{gets.split.map &:to_i}

$members=[*1..M] # 空いているメンバー
$depends=(1..N).map{|i|[i,[]]}.to_h # タスク間の依存関係
UV.each{|u,v|$depends[v]<<u}
$tasks=$depends.tsort # 残タスク（トポロジカルソート済み）
$completed=(1..N).map{|i|[i,false]}.to_h # タスクが完了したかどうか
$working={} # key:作業中のメンバー、value:作業中のタスク

assign

while true
  n,*f=gets.split.map &:to_i
  break if n==-1
  if n>0
    f.each{|i|
      $completed[$working[i]]=true
      $working.delete i
    }
    $members.concat f
    assign
  else
    puts 0; $>.flush
  end
end