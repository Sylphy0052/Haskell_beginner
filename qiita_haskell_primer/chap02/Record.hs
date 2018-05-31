{-
data Foo = Foo { bar :: Int, baz :: String } deriving Show

main = do
  print $ Foo { bar = 1, baz = "a" } -- 名前を指定して束縛
  print $ Foo 2 "b" -- 無名の時と同じ方法
-}

data Foo = Foo { bar :: Int, baz :: String } deriving Show

main = do
  let f = Foo { bar = 1, baz = "a" }
  print f
  print (bar f, baz f) -- フィールド名を関数として使用
  let (Foo a b) = f -- パターンマッチで取り出し
  print (a, b)
  let (Foo { bar = c }) = f -- レコード構文でパターンマッチ
  print c
