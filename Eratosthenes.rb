max = 100

#2~maxまでの配列をつくる
ans_array = []
(2..max).each do |num|
    ans_array.push(num)
end

# maxの平方根までループする
2.upto(Math.sqrt(max)) do |num|
    y = num
    # 素数の倍数を削除する
    while y <= max do
        y += num 
        ans_array.delete(y)
    end
end

p ans_array
