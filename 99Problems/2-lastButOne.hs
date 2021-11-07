lastButOne :: [a] -> a
lastButOne [] = error "empty list"
lastButOne [x] = error "list too short"
lastButOne [x, _] = x
lastButOne (x:xs) = lastButOne xs