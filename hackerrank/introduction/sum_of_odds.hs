--sums odd elements in a list
--i.e. [1,2,4,5,3,6,8,4,7] -> 1+5+3+7 = 16
f :: [Int] -> Int
f arr = sum (filter odd arr)