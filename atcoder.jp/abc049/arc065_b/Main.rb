n,k,l=gets.split.map &:to_i
pq=k.times.map{gets.split.map(&:to_i).map(&:pred)}
rs=l.times.map{gets.split.map(&:to_i).map(&:pred)}

# グラフを作成
g1=Hash.new{|h,k|h[k]=[]}
g2=Hash.new{|h,k|h[k]=[]}
pq.each{|p,q|g1[p] << q; g1[q] << p}
rs.each{|r,s|g2[r] << s; g2[s] << r}

# 深さ優先探索
dfs= ->(g, nums, v, same_num) {
  nums[v] = same_num;
  g[v].each{|to|
    # 訪問済みでなければ探索
    dfs[g, nums, to, same_num] if nums[to]==-1
  }
}

# 道路の連結についてDFS
nums1=Array.new(n,-1) # 連結成分どうしで同じ番号を記録するための配列
num1=0                # 連結成分に付与する番号
n.times{|i|
  if nums1[i]==-1
    dfs[g1, nums1, i, num1]
    num1+=1
  end
}

# 鉄道の連結についてDFS
nums2=Array.new(n,-1)
num2=0
n.times{|i|
  if nums2[i]==-1
    dfs[g2, nums2, i, num2]
    num2+=1
  end
}

pairs=nums1.zip(nums2).to_a
h=pairs.tally
puts pairs.map{|ary|h[ary]}*' '