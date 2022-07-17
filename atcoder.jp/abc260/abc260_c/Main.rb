def r2b(level,x)
  cnt=@red[level]
  @red[level-1] += cnt
  @blue[level] += x*cnt
  @red.delete level
end

def b2r(level,y)
  cnt=@blue[level]
  @red[level-1] += cnt
  @blue[level-1] += y*cnt
  @blue.delete level
end

n,x,y=gets.split.map &:to_i
@red=Hash.new(0)
@blue=Hash.new(0)
@red[n]=1

while !@red.select{|k,v|k>1}.empty? || !@blue.select{|k,v|k>1}.empty?
  r=@red.keys.max.to_i
  b=@blue.keys.max.to_i
  if r>b
    r2b(r,x)
  else
    b2r(b,y)
  end
end

p @blue[1]