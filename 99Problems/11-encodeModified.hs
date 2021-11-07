import Data.List ( group )

data Encoded a = Single a | Multiple Int a deriving (Show)

encodeModified :: Eq a => [a] -> [Encoded a]
encodeModified xs = map encodeItem (group xs)

encodeItem :: [a] -> Encoded a
encodeItem [x] = Single x
encodeItem xs = Multiple (length xs) (head xs)
