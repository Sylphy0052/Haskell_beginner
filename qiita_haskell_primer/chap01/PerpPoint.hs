{-
(p, q)から直線ax+by = cに下ろした水仙の好転を求める関数を実装
y = -a/b x + c
水仙はbx - ay = d
-}

perpPoint (p, q) (a, b, c) = (x, y)
  where
    x = (a * c + b * d) / (a * a + b * b)
    y = (b * c - a * d) / (a * a + b * b)
    d = b * p - a * q

main = do
  print $ perpPoint (0, 2) (1, -1, 0)
