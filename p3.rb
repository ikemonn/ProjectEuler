x = 600851475143
ans_array = []
n = 2

while x >= n do
    if x % n == 0
        x = x / n 
        ans_array.push(n)
        n = 2
    else
        n += 1
    end
end

p ans_array.max
