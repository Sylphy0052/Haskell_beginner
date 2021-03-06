sum' [] = 0
sum' (x:xs) = x + sum' xs

product' [] = 1
product' (x:xs) = x * product' xs

take' _ [] = []
take' n _ | n < 1 = []
take' n (x:xs) = x : take' (n - 1) xs

drop' _ [] = []
drop' n xs | n < 1 = xs
drop' n (_:xs) = drop' (n - 1) xs

{-
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]
-}

reverse' xs = f xs []
  where
    f [] ys = ys
    f (x:xs) ys = f xs (x:ys)

main = do
  print $ sum' [1..5]
  print $ product' [1..5]
  print $ take' 2 [1..5]
  print $ drop' 2 [1..5]
  print $ reverse' [1..5]
