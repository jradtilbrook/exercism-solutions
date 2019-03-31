module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys | length xs /= length ys = Nothing
               | null xs || null ys = Just 0
               | otherwise = if head xs == head ys
                                then distance (tail xs) (tail ys)
                                else (+ 1) <$> distance (tail xs) (tail ys)
