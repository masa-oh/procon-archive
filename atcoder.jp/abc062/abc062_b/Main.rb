h,w=gets.split.map &:to_i
a=$<.map &:chomp
puts ?#*(w+2)
puts a.map{"\##{_1}\#"}
puts ?#*(w+2)