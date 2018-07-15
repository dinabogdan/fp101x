sum100 = sum[x^2 | x <- [0 .. 100]]

replicate :: Int -> a -> [a]
replicate n a = [a | _ <- [1 .. n]]

pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x ^ 2 + y ^ 2 == z ^ 2]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1 .. n], isPerfect x]
  where isPerfect num = sum ( init (factors num)) == num

first_list = [(x, y) | x <- [1,2,3], y <- [4,5,6]]
first_rlist = concat [[(x, y) | y <- [4,5,6]] | x <- [1,2,3]]

find :: (Eq a) => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

positions :: (Eq a) => a -> [a] -> [Int]
positions x xs = find x (zip xs [0..n])
  where n = length xs - 1

scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x*y | (x, y) <- xs `zip` ys]
