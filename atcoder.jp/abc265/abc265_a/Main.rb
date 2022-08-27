x,y,n=gets.split.map &:to_i

# 1つ目の買い方
price1 = x * n

# 2つ目の買い方
price2 = y * (n / 3) + x * (n % 3)

puts [price1, price2].min