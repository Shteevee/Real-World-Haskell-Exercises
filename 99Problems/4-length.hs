length' :: [a] -> Int
length' = foldl (\x _ -> x + 1 ) 0

recursiveLength :: [a] -> Int 
recursiveLength [] = 0
recursiveLength (_:xs) = 1 + recursiveLength xs
