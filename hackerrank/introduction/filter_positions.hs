--filters out numbers at odd positions
--i.e. [2,5,3,4,6,7,9,8] -> [5,4,7,8]
f :: [Int] -> [Int]
--zip lst [1..] creates an indexed list, i.e. zip [1,6,7,8] [1..] -> [(1,1),(6,2),(7,3),(8,4)]
--the filter function here deletes all the elements where the second element of the tuple (i.e.
--the index) is not even
--map fst xs returns a list of only the first elements of the tuples, i.e. it discards the index
--so [(6,2),(8,4)] -> [6,8]
f lst = map fst (filter (even.snd) (zip lst [1..]))

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata

