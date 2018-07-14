first_qsort [] = []
first_qsort (x : xs) = first_qsort larger ++ [x] ++ first_qsort smaller
  where smaller = [a | a <- xs, a<=x]
        larger = [b | b <- xs, b>x]

-- Not ok because the second_qsort function is not applied correctly to xs.
second_qsort [] = []
second_qsort (x : xs) = reverse (second_qsort smaller ++ [x] ++ second_qsort larger)
  where smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]

-- Not ok. Variable x is set as the minimum of the xs list before iterating through all elements that are smaller than x.
min_qsort [] = []
min_qsort xs = min_qsort larger ++ min_qsort smaller ++ [x]
  where x = minimum xs
        smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]

-- Not ok...
fourth_qsort [] = []
fourth_qsort (x : xs) = reverse (fourth_qsort smaller) ++ [x] ++ reverse (fourth_qsort larger)
  where smaller = [a | a <- xs, a<=x]
        larger = [b | b <- xs, b>x]

another_qsort [] = []
another_qsort (x : xs) = reverse (reverse (another_qsort smaller) ++ [x] ++ reverse (another_qsort larger))
  where smaller = [a | a <- xs, a<=x]
        larger = [b | b <- xs, b>x]
