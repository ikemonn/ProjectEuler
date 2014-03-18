sum = 1000
# aの取りうる範囲は1 ~ 1000 / 3 - 1
1.upto(sum / 3 - 1) do |a|
  # bの取りうる範囲は 2 ~ 1000 / 2 - 1
  2.upto(sum / 2 - 1) do |b|
    c = sum - a - b
    if(a < b && b < c && (a**2 + b**2 == c**2))
      p "a:#{a}, b:#{b}, c:#{c}"
      p a * b * c
      break
    end
  end
end
