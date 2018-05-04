module Main where

import Lib
import System.Environment
import Data.List
import Data.List.Split

main :: IO ()
main = do
  args <- getArgs
  let (x,y) = getArgInts args
  
  putStrLn $ toFractionString $ algo x y



toFractionString (x,y) = show x ++ "/" ++ show y

fromFractionString :: String -> (Integer,Integer)
fromFractionString str = ((read (strs !! 0) :: Integer), (read (strs !! 1) :: Integer))
  where strs = splitOn "/" str


getArgInts :: [String] -> (Integer,Integer)
getArgInts xs 
  | arrLen /= 1 = error ("You gave "  ++ show arrLen ++ " argument(s) when we wanted one")
  | otherwise = fromFractionString $ xs !! 0
  where
    arrLen = length xs

