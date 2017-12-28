--filters out any number >= n
--i.e. 3 [0,4,3,1,2,8] -> [0,1,2]
f :: Int -> [Int] -> [Int]
f n arr = filter (<n) arr

-- The Input/Output section. You do not need to change or modify this part
main = do 
    n <- readLn :: IO Int 
    inputdata <- getContents 
    let 
        numbers = map read (lines inputdata) :: [Int] 
    putStrLn . unlines $ (map show . f n) numbers

