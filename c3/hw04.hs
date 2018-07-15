first_remove :: Int -> [a] -> [a]
first_remove n xs = take n xs ++ drop n xs

second_remove :: Int -> [a] -> [a]
second_remove n xs = drop n xs ++ take n xs

third_remove :: Int -> [a] -> [a]
third_remove n xs = take (n+1) xs ++ drop n xs

fourth_remove :: Int -> [a] -> [a]
fourth_remove n xs = take n xs ++ drop (n+1) xs
