addsub x y = (x + y, x - y)
a = addsub 1 2
(a1, a2) = addsub 1 2

main = do
  print $ addsub 1 2
  print a
  print a1
  print a2
