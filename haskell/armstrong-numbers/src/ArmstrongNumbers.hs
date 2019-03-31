module ArmstrongNumbers (armstrong) where

import Data.List

armstrong :: Integral a => a -> Bool
armstrong n = n == sum (map (\x -> x ^ length l) l)
    where
        l = unfoldr unfolder n

unfolder :: Integral a => a -> Maybe (a, a)
unfolder 0 = Nothing
unfolder x = Just (x `mod` 10, x `div` 10)
