module DNA (toRNA) where

toRNA :: String -> Maybe String
toRNA xs = mapM conv xs

conv 'G' = Just 'C'
conv 'C' = Just 'G'
conv 'T' = Just 'A'
conv 'A' = Just 'U'
conv _ = Nothing
