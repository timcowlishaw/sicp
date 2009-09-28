sqrt' :: Double -> Double
sqrt' x =
  sqrtIter (x/2) x x
  where sqrtIter guess lastGuess x
          | abs (guess - lastGuess) < 0.001 = guess
          | otherwise = sqrtIter ((guess + x / guess) / 2.0) guess x
