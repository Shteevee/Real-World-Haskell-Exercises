elementAt' :: [a] -> Int -> a
elementAt' [] _ = error "empty list"
elementAt' xs n = xs !! (n-1)

elementAt'' :: [a] -> Int -> a
elementAt'' (x:_) 1 = x
elementAt'' [] _ = error "index out of bounds"
elementAt'' (_:xs) n
    | n < 1 = error "index out of bounds"
    | otherwise = elementAt' xs (n-1)
