{-
-- naive fibonacci
fib 0 = 0
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)
-}

-- memorized fibonacci
memorized_fib :: Int -> Integer
-- 無限リストに対してfibを遅延することで、以前の計算結果を保持している？
memorized_fib = (map fib [0 ..] !!)
  where fib 0 = 0
        fib 1 = 1
        fib n = memorized_fib　(n-2) + memorized_fib (n-1)
