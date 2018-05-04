# simplify



## How it works: 

1. Find gcd of input numbers
2. Divide numbers by gcd
3. Repeat until gcd of both numbers is one

### In code:

```
algo :: Integer -> Integer -> (Integer,Integer)
algo x y
  | rem == 1 = (x,y)
  | otherwise = algo (x `div` rem) (y `div` rem)
  where rem = gcd x y
```


## How to use:


`stack exec simplify-exe 10/2` = 5/1
