module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
    | n >= 1 = Just (rec n 0)
    | otherwise = Nothing

rec n count
    | n == 1 = count
    | even n = rec (n `quot` 2) count + 1
    | otherwise = rec (n * 3 + 1) count + 1
