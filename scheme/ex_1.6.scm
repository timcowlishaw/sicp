;Exercise 1.6
; Because the arguments to a procedure are evaluated before its body, the procedure will never terminate,
; as it will call itself recursively forever because the <else> condition is always evaluated, regardless
; of whether the predicate evaluates to true or false.