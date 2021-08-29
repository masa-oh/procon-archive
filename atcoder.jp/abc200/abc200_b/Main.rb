n,k=gets.split.map &:to_i
k.times{n=n%200==0 ? n/200 : "#{n}200".to_i}
p n