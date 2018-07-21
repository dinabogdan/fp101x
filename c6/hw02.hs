map f = foldr (\ x xs -> xs ++ [f x])[]
map g = foldr (\ x xs -> g x ++ xs)[]
map h = foldl (\ xs x -> h x : xs)[]
map i = foldl (\ xs x -> xs ++ [i x])[]
