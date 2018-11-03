module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
    | n <= 0 = Nothing
    | n == 1 = Just 0
    | even n = nextStep $ n `div` 2
    | otherwise = nextStep $ 3 * n + 1
    where
        nextStep = fmap (1 +) . collatz
