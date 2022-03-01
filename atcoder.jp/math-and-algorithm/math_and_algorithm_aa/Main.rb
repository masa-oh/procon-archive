def merge_sort(a)
  # 長さ1の場合、すでにソートされているので何もしない
  return a if a.size == 1
  
  # 2つに分割したあと、小さい配列をソート
  m = a.size / 2
  a_dash = merge_sort(a[0...m])
  b_dash = merge_sort(a[m...a.size])

  # ソート済みの2つの配列をMerge
  c1 = c2 = 0
  c = []
  while (c1 < a_dash.size || c2 < b_dash.size)
    if c1 == a_dash.size
      # a'が空の場合
      c << b_dash[c2]
      c2 += 1
    elsif c2 == b_dash.size
      # b'が空の場合
      c << a_dash[c1]
      c1 += 1
    else
      # そのいずれでもない場合
      if a_dash[c1] < b_dash[c2]
        c << a_dash[c1]
        c1 += 1
      else
        c << b_dash[c2]
        c2 += 1
      end
    end
  end
  c
end

n,*a=$<.read.split.map &:to_i
puts merge_sort a