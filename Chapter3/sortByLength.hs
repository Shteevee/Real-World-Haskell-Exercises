import Data.List (sortBy)

sortByLength :: [[a]] -> [[a]]
sortByLength = sortBy (\ xs ys -> compare (length xs) (length ys))
