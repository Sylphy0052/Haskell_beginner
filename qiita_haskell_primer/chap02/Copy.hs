data Foo = Foo { bar :: Int, baz :: String } deriving Show

main = do
  let f = Foo { bar = 1, baz = "a" }
      g = f { bar = 2 } -- barを変更したコピー
  print f -- 元のまま
  print g -- 変更されたコピー
