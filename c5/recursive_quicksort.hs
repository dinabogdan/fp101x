recursive_quicksort :: [Int] -> [Int]
recursive_quicksort []      = []
recursive_quicksort (x:xs)  = recursive_quicksort smaller ++ [x] ++ recursive_quicksort larger
                              where
                                smaller = [a | a <- xs, a<=x]
                                larger  = [b | b <- xs, b>x]
