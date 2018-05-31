import Data.Bits

data Color = Black | Blue | Red | Magenta | Green | Cyan | Yellow | White
    deriving (Show, Enum)

mix c1 c2 = toEnum (fromEnum c1 .|. fromEnum c2) :: Color

main = do
  print $ mix Red Blue
  print $ mix Red $ mix Blue Green
