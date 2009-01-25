;Exercise 1.3

(define (sum-of-squares-of-largest x y z) 
  (define a 
    (cond
      ((> x y) x)
      (#t y)
    )
  )
  (define aa
    (cond
      ((= a x) y)
      (#t x)
    )
  )
  (define b
    (cond
      ((> aa z) aa)
      (#t z)
    )
  )
  (define a-squared (* a a))
  (define b-squared (* b b))
  (+ a-squared b-squared)
)

