(define (pascal row col) 
  (cond
    ((> col row) 0)
    ((< col 0) 0)
    ((= col 1) 1)
    (#t (+ 
      (pascal (- row 1) (- col 1))
      (pascal (- row 1) col)))))
    
(print (pascal 1 1))
(print (pascal 2 1))
(print (pascal 2 2))
(print (pascal 3 1))
(print (pascal 3 2))
(print (pascal 3 3))
(print (pascal 4 1))
(print (pascal 4 2))
(print (pascal 4 3))
(print (pascal 4 4))
