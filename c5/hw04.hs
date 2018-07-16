-- Wrong. compile time errors
first_replicate :: Int -> a -> [a]
first_replicate 1 x = x
first_replicate n x = x : first_replicate (n-1) x

-- Wrong. Compile time errors
second_replicate :: Int -> a -> [a]
second_replicate 0 _ = []
second_replicate n x = second_replicate (n-1) x : x

third_replicate :: Int -> a -> [a]
third_replicate 1 _ = []
third_replicate n x = third_replicate (n-1) x ++ [x]

--correct
fourth_replicate :: Int -> a -> [a]
fourth_replicate 0 _ = []
fourth_replicate n x = x : fourth_replicate (n-1) x
