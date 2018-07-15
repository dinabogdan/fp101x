factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

my_product :: [Int] -> Int
my_product [] = 1
my_product (n : ns) = n * my_product ns

my_length :: [t] -> Int
my_length [] = 0
my_length (_ : xs) = 1 + my_length xs

my_reverse :: [a] -> [a]
my_reverse [] = []
my_reverse (x : xs) = my_reverse xs ++ [x]

my_zip :: [a] -> [b] -> [(a, b)]
my_zip []   _        = []
my_zip _    []       = []
my_zip (x:xs) (y:ys) = (x, y) : my_zip xs ys

my_drop :: Int -> [a] -> [a]
my_drop 0 xs = xs
my_drop n (_:xs) = my_drop (n-1) xs
