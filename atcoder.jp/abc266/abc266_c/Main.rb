def sign(p1, p2, p3)
  (p1[0] - p3[0]) * (p2[1] - p3[1]) - (p2[0] - p3[0]) * (p1[1] - p3[1])
end
 
def pointInTriangle(pt, v1, v2, v3)
  b1 = (sign(pt, v1, v2) < 0)
  b2 = (sign(pt, v2, v3) < 0)
  b3 = (sign(pt, v3, v1) < 0)

  return ((b1 == b2) && (b2 == b3))
end

ps=$<.map{_1.split.map &:to_i}
ans=ps.permutation.map{|pt,v1,v2,v3|
   pointInTriangle(pt, v1, v2, v3)
}
puts ans.any?(true) ? :No : :Yes