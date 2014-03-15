ans = 0
(1..999).each do |num|
    if(num % 3 == 0 || num % 5 == 0) 
        ans += num
    end
end
p ans 
