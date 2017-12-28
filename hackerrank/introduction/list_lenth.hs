--Only fill up the blanks for the function named len
--Do not modify the structure of the template in any other way
len :: [a] -> Int
len (x:xs) = 1 + len xs
len [] = 0