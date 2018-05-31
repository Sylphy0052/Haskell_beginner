length' [] = 0
length' (_:xs) = 1 + length' xs

main = do
  print $ length' [1..3]
