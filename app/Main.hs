module Main where

import Lib
import System.Environment
import Data.List

main :: IO ()
main = do
  args <- getArgs
  let (x,y) = getArgInts args
  
  putStrLn $ toFractionString $ algo x y



toFractionString (x,y) = show x ++ "/" ++ show y


getArgInts :: [String] -> (Integer,Integer)
getArgInts xs 
  | arrLen /= 2 = error ("You gave "  ++ show arrLen ++ " argument(s) when we wanted two")
  | otherwise = (read (xs !! 0), read (xs !! 1))
  where
    arrLen = length xs

