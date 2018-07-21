module Parsing where

import Prelude hiding (return)

newtype Parser a  = P (String -> [(a, String)])

item :: Parser Char
item = P (\ inp -> case inp of
                  []        -> []
                  (x : xs)  -> [(x, xs)])

failure :: Parser a
failure = P (\ inp -> [])

parse :: Parser a -> String -> [(a, String)]
parse (P p) inp = p inp


return :: a -> Parser a
return v = P (\ inp -> [(v, inp)])
