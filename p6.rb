x = 0
y = 0
(1..100).each do |num|
  x += num ** 2
  y += num
  # p "#{num}の2乗を足すと#{x}"
end

p x
p y ** 2
p y**2 - x
