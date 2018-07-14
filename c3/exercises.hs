-- lambda example
add = \x -> (\y -> x + y)

cst :: a -> (b -> a)
cst x = \_ -> x

-- not idiomatic haskell example
nonIdiomaticOdds n = map f [0..n-1]
         where
            f x = x*2 +1

-- idiomatic haskell example using lambda
idiomaticOdds n = map (\x -> x*2 +1) [0..n-1]
