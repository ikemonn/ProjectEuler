# 回文かチェック
def checkPalindrome(word)
  word = word.to_s
  # 左端と右端からそれぞれ同じ文字が並んでいるか確認
  0.upto(word.length / 2) do |num|
    if word[num] != word[-num - 1]
      return false 
    end
  end

  return true 
end

# 3桁の数で割り切れるかチェック
def checkDivided(num)
  min = 111
  max = 999
  # 3桁の積でないものは弾く
  return false  if num < min ** 2  && num > max ** 2 

  # minから順に割っていき、割り切れる&商が3桁ならtrue
  min.upto(max) do |x|
    if num % x == 0 && (num / x).to_s.length == 3
      return true
    end
  end

  return false
end

max = 999 * 999
max.downto(1) do |num|
  if checkPalindrome(num) && checkDivided(num)
    puts num
    break
  end
end
