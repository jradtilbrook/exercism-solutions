module PerfectNumbers (classify, Classification(..), factors) where

data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify n | n <= 0 = Nothing
           | sum (factors n) == n = Just Perfect
           | sum (factors n) <= n = Just Deficient
           | sum (factors n) >= n = Just Abundant
classify _ = Nothing

factors :: Int -> [Int]
factors n = [x | x <- [1.. n `div` 2], n `mod` x == 0]
