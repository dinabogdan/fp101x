first_and [] = True
first_and (b:bs)
  | b         = first_and bs
  | otherwise = False

second_and [] = False
second_and (b : bs) = b || and bs
