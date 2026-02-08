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
| question/longest_substring_without_repeating_characters.rb | 重複なし連続部分文字列の最大長を計算 |
| question/longest_substring_with_at_most_k_distinct_characters.rb | 異なる文字が最大K種類までの最長部分文字列を計算 |
| question/minimum_window_substring.rb | tの全文字を含む最短部分文字列を計算 |
| question/two_sum.rb | 和がkになる2要素のインデックスを返す（ハッシュ） |
| question/contiguous_array.rb | 0と1の個数が同じ最長連続部分配列の長さを計算 |
| question/product_of_array_except_self.rb | 自分以外の要素の積を計算（前後累積積） |
| question/container_with_most_water.rb | 2本の線で囲める水の最大面積を計算（Two Pointer） |
| question/three_sum.rb | 合計0になる重複なし三つ組をすべて返す（Two Pointer） |
| question/binary_search.rb | ソート済み配列からtargetのインデックスを探索（二分探索） |
| question/lower_bound.rb | target以上の値が最初に現れるインデックスを探索（二分探索） |
| question/upper_bound.rb | targetより大きい値が最初に現れるインデックスを探索（二分探索） |
| question/search_in_rotated_sorted_array.rb | 回転ソート済み配列からtargetを探索（二分探索） |
| question/run_length_encoding.rb | 連続する文字を「文字+出現回数」に圧縮（RLE） |
| question/valid_parentheses.rb | 括弧の対応が正しいか判定（スタック） |
| question/min_stack.rb | 最小値取得O(1)のスタックを実装（スタック） |

## 復習問題一覧

| ファイル | 説明 |
|---------|------|
| question2/finding_pythagorean_triples.rb | 配列内にピタゴラス数の組が存在するか判定（ハッシュ） |
| question2/longest_mountain_in_array.rb | 配列内の最長の山の長さを計算（Two Pointer） |
| question2/longest_subarray_sum_k.rb | 和がkになる連続部分配列の最大長を計算（累積和+ハッシュ） |
| question2/binary_search_on_answer.rb | 配列を m 分割するとき部分配列和の最大値を最小化（二分探索） |
| question2/climbing_stairs.rb | n段の階段を1段or2段で上る方法の総数を計算（DP） |
| question2/maximum_subarray.rb | 連続部分配列の最大和を計算（Kadane's Algorithm） |
| question2/maximum_depth_of_binary_tree.rb | 二分木の最大の深さを計算（再帰） |
| question2/merge_two_sorted_lists.rb | 2つのソート済み連結リストを1つにマージ（連結リスト） |
| question2/valid_anagram.rb | 2つの文字列がアナグラムか判定（ハッシュ） |
| question2/kth_largest_element_in_an_array.rb | 配列のK番目に大きい要素を求める（ミニヒープ） |
| question2/number_of_islands.rb | 2次元グリッド内の島の数を計算（DFS） |
| question2/01_knapsack_problem.rb | 容量制限付きナップサックで価値を最大化（DP） |
| question2/group_anagrams.rb | アナグラム同士をグループ化（ハッシュ+ソート） |
| question2/top_k_frequent_elements.rb | 出現回数が多い上位K個の要素を返す（バケットソート） |

## 復習問題一覧 (3回目)

| ファイル | 説明 |
|---------|------|
| question3/pythagorean_triplet_search.rb | 配列内にピタゴラス数の組が存在するか判定（Two Pointer） |
