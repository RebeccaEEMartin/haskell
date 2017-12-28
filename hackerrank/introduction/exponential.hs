import Control.Applicative
import Control.Monad
import System.IO
import Text.Printf

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    forM_ [1..n] $ \a0  -> do
        x_temp <- getLine
        let x = read x_temp :: Double
        printf "%.4f\n" (my_exp x)


getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do          
        x <- getLine         
        xs <- getMultipleLines (n-1)    
        let ret = (x:xs)    
        return ret          

--calculates exponential to 10th term in exponential series
my_exp :: Double -> Double
my_exp n = exp_term n 9

--evaluates a term in the series expansion of e^x
exp_term :: Double -> Int -> Double
exp_term x 0 = 1
exp_term x n = ((x^n)/(fromIntegral(my_factorial n))) + (exp_term x (n-1))

--evaluates n factorial
my_factorial :: Int -> Int
my_factorial 1 = 1
my_factorial n = n * (my_factorial (n-1))