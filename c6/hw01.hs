import Prelude hiding (takeWhile)

-- not correct
takeWhile :: (a->Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile p (x : xs)
  | p x         = x : takeWhile p xs
  | otherwise   = takeWhile p xs


-- correct
takeWhile :: (a->Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile p (x : xs)
  | p x       = x : takeWhile p xs
  | otherwise = []
