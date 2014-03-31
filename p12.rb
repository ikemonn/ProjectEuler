def calc_divisors(num)
  res = [1]
  # 割られる数の平方数より小さいものを求める
  2.upto(Math.sqrt(num).floor) do |i|
    if num % i == 0
      res << i
    end
  end
  # 割られる数÷上記で求め数がのこりの約数
  res.reverse.each do |i|
    res << num / i
  end
  res.uniq
end


num = 0
count = 0
while calc_divisors(num).count < 500
  count += 1
  num += count
end
p num
