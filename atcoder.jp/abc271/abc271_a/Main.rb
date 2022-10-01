ans=gets.to_i.to_s(16).chars.map{|c|c=~/[0-9]/ ? c : c.upcase}.join
puts ans.size==1 ? ?0+ans : ans