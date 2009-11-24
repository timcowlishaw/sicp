ackermann :: (Num a) => a -> a -> a
ackermann _ 0 = 0
ackermann 0 y = 2 * y
ackermann _ 1 = 2
ackermann x y = ackermann (x - 1) (ackermann x (y - 1))