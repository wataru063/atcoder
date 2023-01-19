# sample1)
#  input:  1 3
#  output: C
# sample2)
#  input: 2 12
#  output: F

n, x = gets.split.map(&:to_i)
alphabets = ("A".."Z").to_a
puts(alphabets[(x.to_f / n.to_f).ceil-1])

# (x/n) は整数の割り算になるため、下記のような条件分岐 or 上記のような小数点計算にする必要あり
# if x % n == 0
#     puts alphabets[x / n - 1]
# else
#     puts alphabets[x / n]
# end


# 別解 最速だったやつ
# N, X = gets.chomp.split.map(&:to_i)
# s = ('A'..'Z').each_with_object([]) do |char, arr|
#     arr << char * N
# end
# puts s.join[X-1]