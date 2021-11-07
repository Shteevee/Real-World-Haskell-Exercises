data Encoded a = Single a | Multiple Int a deriving (Show)

decodeModified :: [Encoded a] ->  [a]
decodeModified = concatMap decodeItem

decodeItem :: Encoded a -> [a]
decodeItem (Single x) = [x]
decodeItem (Multiple k x) = map (const x) [1..k]
