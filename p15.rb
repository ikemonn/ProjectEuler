def multiplication(num) 
  ans = 1
  1.upto(num) do |x|
    ans *= x 
  end
  return ans
end
p multiplication(40) / multiplication(20) / multiplication(20)


