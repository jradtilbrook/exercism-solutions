module Bob (responseFor) where

import Data.Text

responseFor :: String -> String
responseFor xs
    | strip xs == "" = "Fine. Be that way!"
