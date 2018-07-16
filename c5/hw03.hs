-- Wrong. compiletime errors
first_concat :: [[a]] -> [a]
first_concat [] = []
first_concat (xs : xss) = xs : first_concat xss

second_concat :: [[a]] -> [a]
second_concat [] = []
second_concat (xs : xss) = xs ++ second_concat xss

-- Wrong. compiletime errors
third_concat :: [[a]] -> [a]
third_concat [] = [[]]
third_concat (xs : xss) = xs ++ third_concat xss

fourth_concat :: [[a]] -> [a]
fourth_concat [[]] = []
fourth_concat (xs : xss) = xs ++ fourth_concat xss
