pack :: Eq a => [a] -> [[a]]
pack = foldr packDups []

packDups :: Eq a => a -> [[a]] -> [[a]]
packDups x [] = [[x]]
packDups x (y:ys)
    | x == head y = (y ++ [x]):ys
    | otherwise = [x]:y:ys

encode :: Eq a => [a] -> [(Int, a)]
encode xs = map (\x -> (length x, head x)) (pack xs)
