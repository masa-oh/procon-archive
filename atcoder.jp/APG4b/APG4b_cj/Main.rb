a=$<.read.split.map(&:to_i)[1..]
ave=a.sum/a.size
puts a.map{(_1-ave).abs}