;Exercise 1.5 

; As p evaluates to itself, it will be called recursively forever if evaluted.
; Therefore, when the expression is evaluated under an applicative-order evaluation strategy, the process will never terminate.
; However, under normal-order evaluation, the expression will return 0 as p is never evaluated
; (x == 0 and therefore x is returned without needing to evaluate y (which == (p))) 
