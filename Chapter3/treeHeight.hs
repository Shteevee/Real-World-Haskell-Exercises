data Tree a = Node a (Tree a) (Tree a)
    | Empty
    deriving (Show)

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node x l r) =
    if left > right then
        1 + left
    else
        1 + right
    where
        left = treeHeight l
        right = treeHeight r

sampleTree1 :: Tree Integer
sampleTree1 = Node 1 Empty Empty

sampleTree2 :: Tree Integer
sampleTree2 = Node 1 (Node 2 Empty (Node 3 Empty Empty)) Empty

-- overzealous formatting for clarity
sampleTree3 :: Tree Integer
sampleTree3 =
    Node
    1 
    (
        Node
        2 
        (
            Node
            4
            Empty
            (
                Node
                5
                Empty
                Empty
            )
        )
        (
            Node
            3
            Empty
            Empty
        )
    )
    (
        Node
        6
        Empty
        (
            Node
            7 
            Empty
            Empty
        )
    )
