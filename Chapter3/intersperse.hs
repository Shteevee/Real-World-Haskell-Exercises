intersperse :: Char -> [String] -> String
intersperse _ [] = []
intersperse _ [x] =  x
intersperse joint (x:xs) = x ++ [joint] ++ intersperse joint xs
