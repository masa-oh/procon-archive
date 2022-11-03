_,*hs=$<.read.split.map &:to_i
max=0
p hs.map.with_index{|h,i|(max=h; i+1) if max<h}.compact.pop