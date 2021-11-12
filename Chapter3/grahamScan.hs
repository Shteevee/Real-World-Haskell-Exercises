data Direction = Left | Right | Straight deriving (Show)

data Point2D = Point2D {
    x :: Int,
    y :: Int
} deriving (Show)

-- from collinearity check
turnABC :: Point2D -> Point2D -> Point2D -> Direction
turnABC (Point2D aX aY) (Point2D bX bY) (Point2D cX cY) =
    case compare collinear 0 of
        GT -> Main.Left
        LT -> Main.Right
        EQ -> Straight
    where
        collinear = (bX - aX) * (cY - aY) - (bY - aY) * (cX - aX)

groupThree :: [a] -> [(a,a,a)]
groupThree [] = []
groupThree [_] = []
groupThree [_,_] = []
groupThree xs@(x:y:z:_) = (x,y,z) : groupThree (tail xs)

turnList :: [Point2D] -> [Direction]
turnList xs = map (\(x,y,z) -> turnABC x y z) (groupThree xs)

sample = turnList [Point2D 0 0,Point2D 1 1,Point2D 2 2,Point2D 2 1,Point2D 3 3,Point2D 4 5]
