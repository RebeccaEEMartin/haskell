--replicates all the items in the array n times
--i.e. 3 [1,2,3,4] -> [1,1,1,2,2,2,3,3,3,4,4,4]
f :: Int -> [Int] -> [Int]
f n arr = concat (map (replicate n) arr)

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words

