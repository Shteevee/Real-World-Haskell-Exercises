mean :: [Int] -> Int
mean [] = 0
mean xs = div (sum xs) (length xs)
