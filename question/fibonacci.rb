# 問題：n番目のフィボナッチ数
# フィボナッチ数列は以下で定義されます。
# 	•	F(0) = 0
# 	•	F(1) = 1
# 	•	F(n) = F(n-1) + F(n-2)  (n ≥ 2)
# 整数 n が与えられたとき、F(n) を返してください。
# ⸻
# 制約
# 	•	0 ≤ n ≤ 1_000_000
# 	•	再帰の素朴実装は不可（指数時間になる）

# def fib(n)
#   if n <= 1
#     return n
#   end
#   return fib(n - 1) + fib(n - 2)
# end

def fib(n)
  return n if n <= 1
  dp = Array.new(n + 1, 0)
  dp[0] = 0
  dp[1] = 1
  2.upto(n) do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end
  dp[n]
end

p fib(0)
p fib(1)
p fib(2)
p fib(3)
p fib(4)
p fib(5)
