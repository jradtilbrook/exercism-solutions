module SumOfMultiples (sumOfMultiples) where

import Data.List

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples [0] _ = 0
sumOfMultiples factors limit = sum $ nub $ concatMap (takeWhile (limit >)) multiples
    where
        -- get a list of lists representing the multiples of all the given factors
        multiples = map (\x -> [x, x + x..]) factors
