import Prelude hiding (elem)

elem :: Eq a => a -> [a] -> Bool
elem _ [] = False
elem x (y : ys)
  | x == y    = True
  | otherwise = elem x ys

-- Wrong. Goes into infinite loop
elem :: Eq a => a -> [a] -> Bool
elem x (y : ys)
  | x == y    = True
  | otherwise = elem x (y : ys)

-- wrong. the initial expression is wrong
elem :: Eq a => a -> [a] -> Bool
elem _ [] = True
elem x (y : ys)
  | x == y      = True
  | otherwise   = elem x ys
