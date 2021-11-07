-- Unsure whether to use Maybe or error so wrote both

lastButOne :: [a] -> Maybe a
lastButOne [] = Nothing
lastButOne [x, _] = Just x
lastButOne (x:xs) = lastButOne xs

errorLastButOne :: [a] -> a
errorLastButOne [] = error "list too short"
errorLastButOne [x, _] = x
errorLastButOne (x:xs) = errorLastButOne xs