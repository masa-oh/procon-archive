$n = gets.to_i
$t = []
$k = []
$a = []

$n.times do |i|
  $t[i], $k[i], *$a[i] = gets.chomp.split(' ').map(&:to_i)
end

$result = 0
$has_power = {}

def training(p_i)
  unless $a[p_i].size.zero? || $has_power[$a[p_i]]
    $a[p_i].each do |power|
      next if $has_power[power]
      power_index = power - 1
      training(power_index)
    end
  end
  $has_power[p_i + 1] = true
  $result = $result + $t[p_i]
  puts $result if p_i == $n-1
end

training($n-1)