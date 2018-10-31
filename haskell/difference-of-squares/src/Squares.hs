module Squares (difference, squareOfSums, sumOfSquares) where

difference :: Integral a => a -> a
difference = fmap (-) squareOfSums <*> sumOfSquares
-- difference = (-) <$> squareOfSums <*> sumOfSquares

squareOfSums :: Integral a => a -> a
squareOfSums n = (n * (n + 1) `div` 2) ^ 2


sumOfSquares :: Integral a => a -> a
sumOfSquares n = (product [n, n + 1, 2*n + 1]) `div` 6
