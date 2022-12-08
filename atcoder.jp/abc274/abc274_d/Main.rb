n, x, y = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

x -= a[0]
a = a[1..-1]

f = lambda do |a, x|
  tot = x
  a.each do |v|
    tot += v
  end
  return false if tot&1 > 0 || tot < 0
  tot /= 2
  dp = [true] + [false] * tot
  a.each do |v|
    (tot).downto(v) do |j|
      dp[j] = dp[j] || dp[j - v]
    end
  end
  dp[tot]
end

b, c = [], []
a.each_with_index do |v, i|
  if i&1 == 0
    b << v
  else
    c << v
  end
end

if f.call(c, x) && f.call(b, y)
  puts "Yes"
else
  puts "No"
end