isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = error "empty list"
isPalindrome xs = xs == reverse xs
