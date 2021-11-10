checkPalindrome :: Eq a => [a] -> Bool
checkPalindrome [] = False
checkPalindrome xs = xs == reverse xs
