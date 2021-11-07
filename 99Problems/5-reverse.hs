reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

{- HLINT ignore "Avoid lambda" -}
-- HLint want to use (flip :) instead of the lambda
-- could not get this to work
foldReverse :: [a] -> [a]
foldReverse = foldl (\xs ys -> ys:xs) []
