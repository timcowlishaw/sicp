pascal :: (Integral a) => a -> a -> a
pascal row col
  | col > row = 0
  | col < 0 = 0
  | col == 1 = 1
  | otherwise = (pascal (row - 1) col) + (pascal (row - 1) (col - 1))


main = do
  print (pascal 1 1)
  print (pascal 2 1)
  print (pascal 2 2)
  print (pascal 3 1)
  print (pascal 3 2)
  print (pascal 3 3)
  print (pascal 4 1)
  print (pascal 4 2)
  print (pascal 4 3)
  print (pascal 4 4)
  

{- For bonus points - output the entire damn triangle up to n rows.-}
pascalTriangle :: (Integral a) => a -> [[a]]
pascalTriangle n = map pascalRow [1..n]
  where
    pascalRow :: (Integral a) => a -> [a]
    pascalRow n = applyRepeatedly (n - 1) nextRow [1]
      where
        applyRepeatedly :: (Integral a) => a -> (b -> b) -> (b -> b)
        applyRepeatedly 0 func = (\x -> x)
        applyRepeatedly 1 func = func
        applyRepeatedly n func = func . (applyRepeatedly (n - 1) func)
        nextRow :: (Integral a) => [a] -> [a]
        nextRow row = map sumList pairs
          where
            sumList list = foldl (+) 0 list
            pairs = toPairs ([0] ++ (dupList row) ++ [0])
              where
                dupList :: [a] -> [a]
                dupList [] = []
                dupList (x:xs) = x:x:(dupList xs)
                toPairs :: [a] -> [[a]]
                toPairs [] = []
                toPairs (x:[]) = (x:[]):[]
                toPairs (x:y:xs) = (x:[y]):(toPairs xs)
