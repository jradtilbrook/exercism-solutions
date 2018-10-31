module Pangram (isPangram) where

import Data.List
import Data.Char

isPangram :: String -> Bool
isPangram  = null . (['a' .. 'z'] \\) . map toLower
