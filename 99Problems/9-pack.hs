import Data.List

-- This feels a bit cheap
pack :: Eq a => [a] -> [[a]]
pack = group

pack' :: Eq a => [a] -> [[a]]
pack' = foldr packDups []

packDups :: Eq a => a -> [[a]] -> [[a]]
packDups x [] = [[x]]
packDups x (y:ys)
    | x == head y = (y ++ [x]):ys
    | otherwise = [x]:y:ys
