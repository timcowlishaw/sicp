{- Recursively -}
f_rec :: (Num a, Ord a) => a -> a
f_rec n
  | n <= 3 = n
  | otherwise = f_rec(n - 1) + 2 * f_rec(n - 2) + 3 * f_rec(n - 3) 

{- Iteratively -}
f_iter :: (Num a, Ord a) => a -> a
f_iter n = f_iter_inner 1 2 3 (n - 1)
  where
    f_iter_inner a b c 0 = a
    f_iter_inner a b c index = f_iter_inner b c (c + 2 * b + 3 * a) (index - 1)