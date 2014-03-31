ans = 0
(2 ** 1000).to_s.split(//).each do |elem|
  # p elem
  ans += elem.to_i
end
p ans
