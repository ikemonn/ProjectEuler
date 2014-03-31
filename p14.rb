num = 1_000_000
ans = []
1.upto(num) do |x|
  array = [x]
  # p array[-1]
  while array[-1] != 1 
    n = array[-1]
    if n % 2 == 0
      array.push (n / 2)
    else
      array.push (3 * n + 1)
    end
  end
  ans = array if ans.size < array.size
end
p ans[0]
