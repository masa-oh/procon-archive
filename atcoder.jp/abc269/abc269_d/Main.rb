require 'set'

def neighbors(x,y)
  [[x-1,y-1], [x-1,y], [x,y-1], [x,y+1], [x+1,y], [x+1,y+1]]
end

def recursive(x,y)
  neighbors(x,y).select{@xys.include?(_1)}.each{|nx,ny|
    @xys.delete([nx,ny])
    recursive(nx,ny)
  }
end

(n,),*xy=$<.map{_1.split.map &:to_i}
ans=0
@xys=Set.new(xy)
while @xys.size>0
  x,y = @xys.to_a[0]
  @xys.delete([x,y])
  recursive(x,y)
  ans += 1
end
p ans