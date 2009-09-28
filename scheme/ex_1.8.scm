;Exercise 1.8

(define (cubert-iter guess last-guess x)
  (if (good-enough? guess last-guess)
    guess
    (cubert-iter (improve guess x) guess x)
  )
)

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3)
)

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.0001)
)

(define (square x)
  (* x x)
)

(define (cubert x)
  (cubert-iter 1.0 x x)
)

