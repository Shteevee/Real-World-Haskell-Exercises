main :: IO ()
main = interact charCount

charCount :: Foldable t => t a -> String
charCount input = show (length input) ++ "\n"
