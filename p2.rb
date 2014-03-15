#フィボナッチ数をつくる
def fib(n)
    return 1 if n == 0
    return 2 if n == 1
    fib(n - 2) + fib(n - 1)
end

ans = 0
num = 0
max = 4_000_000

while fib(num) <= max 
    ans += fib(num) if fib(num).even?
    num += 1
end

p ans
