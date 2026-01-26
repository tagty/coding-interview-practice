def count_unique_pairs(a, k)
  freq = Hash.new(0)
  a.each { |v| freq[v] += 1 }

  ans = 0
  freq.each do |x, cnt|
    y = k - x
    next if y < x

    if x == y
      ans += 1 if cnt >= 2
    else
      ans += 1 if freq.key?(y)
    end
  end

  ans
end

p count_unique_pairs([1,1,2,2], 3) # 1
p count_unique_pairs([1,2,3,4], 5) # 2
p count_unique_pairs([0,0,0], 0)   # 1
p count_unique_pairs([1,1,1], 2)   # 1
