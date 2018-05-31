main = do
  print $ length [1, 2, 3]
  print $ sum [1..5] -- 総足し算
  print $ product [1..5] -- 総掛け算
  print $ take 2 [1..5] -- 先頭からn個抽出する
  print $ drop 2 [1..5] -- 先頭からn個落とす
  print $ reverse [1..5] -- リストを逆順にする
