{-
main = do
  let p2 = (1, 2)
  print $ fst p2
  print $ snd p2
-}

main = do
  let p3 = (1, 2, 3)
  print p3
  let (_, _, p3z) = p3
  print p3z
