data Tree a = Node a (Maybe (Tree a)) (Maybe (Tree a)) deriving (Show)

-- This turned out a bit gross but
-- it's what they asked for
sampleTree :: Tree Integer
sampleTree = Node 3 (Just (Node 2 Nothing (Just (Node 1 Nothing Nothing)))) Nothing
