;-------QUDUS AGBALAYA (Prince)-----------
;-------3007 Assignment2------------------
;a
(define (cubr x)
  (define (square x )(* x x))
  (define (cube x)(* x x x))
  
  (define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.000001))
  ;(x/y2+2y)/3
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

  (define (cbrt-iteration guess x)
    (if (good-enough? guess x)
        guess
        (cbrt-iteration (improve guess x) x)))
  (cbrt-iteration 1.0 x))

(display "-----TESTING------")(newline)
(display "(cubr 27): ")(newline)
  (display " Expected: 3")(newline)
  (display " Actual: ")(cubr 27)(newline)
(display "(cubr 64): ")(newline)
  (display " Expected: 4")(newline)
  (display " Actual: ")(cubr 64)(newline)


;c.)No. It runs in an infinite loop because scheme uses an applicative order evaluation, so the parameters are evaluated first. 