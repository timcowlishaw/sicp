;f(n) = n if n<3
;      f(n - 1) + 2f(n - 2) + 3f(n - 3)

;recursively:
(define (f-rec n) 
  (cond 
    ((<= n 3) n)
    (#t (+
      (f-rec (- n 1))
      (* 2 (f-rec (- n 2)))
      (* 3 (f-rec (- n 3)))))))
; and iteratively:
(define (f-iter n) 
  (define (f-iter-inner a b c index)
    (cond (
      (= index 1) a)
      (#t (f-iter-inner b c (+ c (* 2 b) (* 3 a)) (- index 1)))))
  (f-iter-inner 1 2 3 n))

(print (f-rec 5))
(print (f-iter 5))