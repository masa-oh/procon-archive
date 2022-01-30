(h,w),*a=$<.map{_1.split.map &:to_i}
puts a.transpose.map{_1.join(' ')}