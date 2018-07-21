squares :: Integer -> [Integer]
squares x = [n*n | n <- [1 .. x]]

sumSquares :: Integer -> Integer
sumSquares n = sum (squares n)

squares' :: Integer -> Integer -> [Integer]
squares' x y = [ n * n | n <- [(y + 1) .. (y+x)]]

sumSquares' x = sum . uncurry squares' $ (x, x)
