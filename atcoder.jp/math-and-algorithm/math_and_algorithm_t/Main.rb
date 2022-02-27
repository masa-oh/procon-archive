n,*a=$<.read.split.map &:to_i
p (0..n-5).sum{|i|
  (i+1..n-4).sum{|j|
    (j+1..n-3).sum{|k|
      (k+1..n-2).sum{|l|
          a[l+1..].count(1000-(a[i]+a[j]+a[k]+a[l]))
      }
    }
  }
}
        