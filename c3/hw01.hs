--halve function
--first_halve :: [a] -> ([a], [a])

-- not correct because '/' will produce a compile time error
--first_halve xs = (take n xs, drop n xs)
--  where n = length xs / 2

second_halve :: [a] -> ([a], [a])
second_halve xs = splitAt (length xs `div` 2) xs

third_halve :: [a] -> ([a], [a])
third_halve xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
  where n = length xs

-- not correct because splitAt needs two arguments and here only one is provided
--fourth_halve :: [a] -> ([a], [a])
--fourth_halve xs = splitAt (length xs `div` 2)

-- wrong result
fifth_halve :: [a] -> ([a], [a])
fifth_halve xs = (take n xs, drop (n+1) xs)
  where n = length xs `div` 2

sixth_halve :: [a] -> ([a], [a])
sixth_halve xs = splitAt (div (length xs) 2) xs

-- compile time error
--seventh_halve :: [a] -> ([a], [a])
--seventh_halve xs = splitAt (length xs / 2) xs

eighth_halve :: [a] -> ([a], [a])
eighth_halve xs = (take n xs, drop n xs)
  where n = length xs `div` 2
