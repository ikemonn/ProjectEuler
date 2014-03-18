max = 2_000_000
# max = 10
ans_array = [*2..max]
2.upto(Math.sqrt(max)) do |num|
  ans_array.reject! { |elem| (elem % num == 0 && elem > num) }
end

p ans_array.inject{|result, num| result + num }
