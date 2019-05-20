;-------QUDUS AGBALAYA (Prince)-----------
;-------3007 Assignment2------------------
;5
(define (inc x) (+ x 1))
(define (identity x) x)
;(define (sum-integers a b)
;	(sum identity a inc b))

(define (sum-integers a b)
  (define (sum-iter x y count)
    (if (< y x) count (sum-iter (inc x) (identity y) (+ count x))))
  
    (if (< b a) "Invalid" (sum-iter a b 0)))

(display "--------TESTING--------")(newline)
(display "(sum-integers 1 3)")(newline)
   (display " Expected: 6")(newline)
   (display " Actual: ")(sum-integers 1 3)(newline)
(display "(sum-integers 10 10)")(newline)
   (display " Expected: 10")(newline)
   (display " Actual: ")(sum-integers 10 10)(newline)
(display "(sum-integers 10 6)")(newline)
   (display " Expected: Invalid")(newline)
   (display " Actual: ")(sum-integers 10 6)(newline)
(display "(sum-integers 10 20)")(newline)
   (display " Expected: 165")(newline)
   (display " Actual: ")(sum-integers 10 20)(newline)

