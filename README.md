# Coding Interview Practice

コーディング面接の練習用リポジトリ。

## 環境

- Ruby 3.4.1

## 実行方法

```bash
ruby question/<filename>.rb
```

## 問題一覧

| ファイル | 説明 |
|---------|------|
| question/pythagorean.rb | ピタゴラス数（x² + y² = z² を満たす整数の組）を列挙 |
| question/pythagorean_max.rb | 指定値以下で最大のピタゴラス数の組を探索 |
| question/two_sum_count.rb | 合計が k になるユニークなペアの数を計算 |
| question/closest_two_sum.rb | 和が目標値に最も近いペアを探索（二分探索） |
| question/interval_scheduling.rb | 区間の重なりを解消するための最小削除数（貪欲法） |
| question/weighted_interval_scheduling.rb | 重み付き区間スケジューリングで価値最大化（DP+二分探索） |
| question/fibonacci.rb | n番目のフィボナッチ数を計算（DP） |
| question/house_robber.rb | 隣接不可制約で盗める最大金額を計算（DP） |
| question/house_robber_2.rb | 円形配置での隣接不可制約で盗める最大金額（DP） |
| question/maximum_subarray.rb | 連続部分配列の最大和を計算（Kadane's Algorithm） |
| question/maximum_product_subarray.rb | 連続部分配列の最大積を計算（DP） |
| question/subarray_sum_equals_k.rb | 和が k になる連続部分配列の個数を計算（累積和+ハッシュ） |
| question/best_time_to_buy_and_sell_stock.rb | 株の売買で得られる最大利益を計算（1回売買） |
| question/best_time_to_buy_and_sell_stock_2.rb | 株の売買で得られる最大利益を計算（複数回売買） |
| question/longest_increasing_subarray.rb | 連続する厳密増加部分配列の最長の長さを計算 |
| question/longest_consecutive_ones.rb | 連続する1の最大長を計算 |
| question/longest_ones_after_one_flip.rb | 0を1個だけ1に変えてよいときの連続する1の最大長を計算 |
