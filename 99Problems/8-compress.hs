import Data.List (group)

compress :: Eq a => [a] -> [a]
compress = foldl compressDups []

compressDups :: Eq a => [a] -> a -> [a]
compressDups [] x = [x]
compressDups xs y
    | y /= last xs = xs ++ [y]
    | otherwise = xs

groupCompress :: Eq a => [a] -> [a]
groupCompress xs = map head (group xs)
