-- FizzBuzz in Haskell
module Main where
 
main :: IO ()
main = printAll $ map fizzBuzz [1..100]
       where
       printAll [] = return ()
       printAll (x:xs) = putStrLn x >> printAll xs
 
fizzBuzz :: Integer -> String
fizzBuzz n | n `mod` 15 == 0 = "fizzbuzz"
           | n `mod` 5  == 0 = "buzz"
           | n `mod` 3  == 0 = "fizz"
           | otherwise       = show n
