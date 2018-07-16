import Prelude hiding ((!!))

-- wrong bad result
(!!) :: [a] -> Int -> a
(x : _) !! 1 = x
(_ : xs) !! n = xs !! (n-1)

-- Wrong compile time errors
(!!) :: [a] -> Int -> a
(x : _) !! 0 = x
(_ : xs) !! n = xs !! (n-1)
[] !! n = 0

(!!) :: [a] -> Int -> a
(x : _) !! 0 = x
(_ : xs) !! n = xs !! (n-1)

-- compile time errors
(!!) :: [a] -> Int -> a
(x : _) !! 0 = [x]
(_ : xs) !! n =  xs !! (n-1)
