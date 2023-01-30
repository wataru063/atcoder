n, _, q = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i)
ls = gets.chomp.split.map(&:to_i)

q.times do |num|
  target = ls[num] - 1
  next if (as[target] && as[target] >= n) || as.include?(as[target]+1)
  as[target] = as[target] + 1
end
puts as.join(" ")