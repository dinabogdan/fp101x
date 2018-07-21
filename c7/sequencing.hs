newtype Parser a  = P (String -> [(a, String)])
p :: Parser (Char, Char)
p = do x <- item
       item
       y <- item
       return (x, y)
