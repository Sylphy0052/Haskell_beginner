data Point = Point { px :: Int, py :: Int } deriving Show
data Rect = Rect { rx :: Int, ry :: Int, rw :: Int, rh :: Int } deriving Show

contains r p =
  (rx r) <= (px p) && (px p) < (rx r) + (rw r) &&
  (ry r) <= (py p) && (py p) < (ry r) + (rh r)

main = do
  print $ contains Rect { rx = 2, ry = 2, rw = 3, rh = 3 } Point { px = 1, py = 1 }
  print $ contains Rect { rx = 2, ry = 2, rw = 3, rh = 3 } Point { px = 2, py = 2 }
  print $ contains Rect { rx = 2, ry = 2, rw = 3, rh = 3 } Point { px = 3, py = 3 }
  print $ contains Rect { rx = 2, ry = 2, rw = 3, rh = 3 } Point { px = 4, py = 4 }
  print $ contains Rect { rx = 2, ry = 2, rw = 3, rh = 3 } Point { px = 5, py = 5 }
