# 問題：Two Sum（インデックスを返す）
# 整数配列 a と整数 k が与えられます。
# a[i] + a[j] == k を満たす 異なる2要素 を見つけて、そのインデックス [i, j] を返してください（i < j）。
# 存在しない場合は nil を返してください。
# ※ 1つ見つかればOK（複数あっても最初でOK）

def two_sum_index(a, k)
  freq = {}
  a.each_with_index do |v, i|
    if freq.key?(k - v)
      return freq[k - v], i
    end
    freq[v] = i
  end
  nil
end

a = [3,2,4]
k = 6
p two_sum_index(a, k)
# 2 + 4 = 6 => [1,2]
a = [2,7,11,15]
k = 9
p two_sum_index(a, k)
# 2 + 7 = 9 => [0,1]
a = [3,3]
k = 6
p two_sum_index(a, k)
# => [0,1]
a = [1,2,3]
k = 10
p two_sum_index(a, k)
# => nil
