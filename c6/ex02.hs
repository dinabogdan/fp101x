coords :: Integer -> Integer -> [(Integer, Integer)]
coords x y = [(i, j) | i <- [0..x], j <- [0..y]]
