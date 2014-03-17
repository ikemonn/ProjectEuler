max = 100
#2~maxまでの配列をつくる
ans_array = (2..max).to_a
# ans_array = [*2..100] この方法でもOK

# maxの平方根までループする
2.upto(Math.sqrt(max)) do |num|
  y = num
  # 素数の倍数を削除する
  while y <= max do
    y += num 
    ans_array.reject! { |elem| elem % y == 0  }
  end
  # ans_array.reject! { |elem| elem % y == 0 }
end

p ans_array
