--converts a list of integers to their absolute values
f :: [Int] -> [Int]
f arr = map get_abs arr

--returns absolute value of integer
get_abs :: Int -> Int
get_abs n = if n >=0 then n else (-n)