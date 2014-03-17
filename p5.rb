n = 1
(2..20).each do |num|
  # p "#{n}と#{num}の最小公倍数は,"
  n = n.lcm(num)
  # p "#{n}"
end
p n
