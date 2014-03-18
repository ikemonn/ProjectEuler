def isPrime(num)
  2.upto(Math.sqrt(num)) do |i|
    if num % i == 0
      return false
    end
  end
end

p isPrime(79)

count = 0
x = 1

while true
  x = x + 1
  if isPrime(x)
    count += 1
      if count == 10001
        break
      end
  end
end

p x
