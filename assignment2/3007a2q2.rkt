;-------QUDUS AGBALAYA (Prince)-----------
;-------3007 Assignment2------------------
;2
(define (pascals x y)
  (cond ((> y x) "Invalid Entry")
        ((= y 0) 1)
        ((= x y) 1)
        (else (+ (pascals (- x 1) (- y 1))
                 (pascals (- x 1) y)))))

(display "--------TESTING--------")(newline)
(display "(pascals 0 0)")(newline)
   (display " Expected : 1")(newline)
   (display " Actual : ")(pascals 0 0)(newline)
(display "(pascals 2 0)")(newline)
   (display " Expected : 1")(newline)
   (display " Actual : ")(pascals 2 0)(newline)
(display "(pascals 2 1)")(newline)
   (display " Expected : 2")(newline)
   (display " Actual : ")(pascals 2 1)(newline)
(display "(pascals 4 2)")(newline)
   (display " Expected : 6")(newline)
   (display " Actual : ")(pascals 4 2)(newline)