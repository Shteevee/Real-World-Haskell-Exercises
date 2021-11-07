data NestedList a = Elem a | List [NestedList a] deriving (Show)

flatten' :: NestedList a -> [NestedList a]
flatten' (List []) = []
flatten' (Elem x) = [Elem x]
flatten' (List (x:xs)) = flatten' x ++ flatten' (List xs)
