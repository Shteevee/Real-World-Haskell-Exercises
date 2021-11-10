data List a = Cons a (List a) | Nil deriving (Show)

-- what a confusing name the book has given this
fromList :: List a -> [a]
fromList Nil = []
fromList (Cons x xs) = x : fromList xs

-- HLint is wanting this to be foldr but keeping
-- it this way because of book continuity
toList :: [a] -> List a
toList [] = Nil
toList (x:xs) = Cons x (toList xs)
