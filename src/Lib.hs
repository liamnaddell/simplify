module Lib
    ( algo 
    ) where

algo :: Integer -> Integer -> (Integer,Integer)
algo x y
  | rem == 1 = (x,y)
  | otherwise = algo (x `div` rem) (y `div` rem)
  where rem = gcd x y
