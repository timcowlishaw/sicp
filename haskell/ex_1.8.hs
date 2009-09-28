cubert :: Double -> Double
cubert x =
  cubertIter (x/3) x x
  where cubertIter guess lastGuess x
          | abs (guess - lastGuess) < 0.001 = guess
          | otherwise = cubertIter ((x/guess^2 + 2*guess) / 3) guess x
