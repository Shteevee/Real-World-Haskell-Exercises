reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

makePalindrome :: [a] -> [a]
makePalindrome [] = []
makePalindrome xs = xs ++ reverse' xs
