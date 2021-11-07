data Encoded a = Single a | Multiple Int a deriving (Show)

encodeDirect :: [a] -> [Encoded a]
