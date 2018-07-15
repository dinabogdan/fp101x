-- correct
first_safetail :: [a] -> [a]
first_safetail xs = if null xs then [] else tail xs

-- correct
second_safetail :: [a] -> [a]
second_safetail [] = []
second_safetail (_ : xs) = xs

-- wrong
third_safetail :: [a] -> [a]
third_safetail (_ : xs)
  | null xs   = []
  | otherwise = tail xs

-- correct
fourth_safetail :: [a] -> [a]
fourth_safetail xs
  | null xs   = []
  | otherwise = tail xs

-- wrong
fifth_safetail :: [a] -> [a]
fifth_safetail xs = tail xs
fifth_safetail [] = []

-- correct
sixth_safetail :: [a] -> [a]
sixth_safetail [] = []
sixth_safetail xs = tail xs

-- wrong
seventh_safetail :: [a] -> [a]
seventh_safetail [x] = [x]
seventh_safetail (_:xs) = xs

-- correct
eighth_safetail :: [a] -> [a]
eighth_safetail =
  \ xs ->
    case xs of
      [] -> []
      (_ : xs) -> xs
