;-------QUDUS AGBALAYA (Prince)-----------
;-------3007 Assignment2------------------
;3.b)
  (define (square x )(* x x))
  (define (cube x)(* x x x))
  
  #|(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.000001))
  |#
  ;(x/y2+2y)/3
  (define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

  (define (cbrt-iteration guess x f)
    (if (f guess x)
        guess
        (cbrt-iteration (improve guess x) x f)))

  (define (cubr x f)
    (cbrt-iteration 1.0 x f))

;----------USER DEFINED FUNCTIONS-------------------
  (define (my-good-enough1 guess x)
    (< (abs (- (cube guess) x)) 0.1))
  
  (define (my-good-enough2 guess x)
    (< (abs (- (cube guess) x)) 0.01))

  (define (my-good-enough3 guess x)
    (< (abs (- (cube guess) x)) 0.001))

  (define (my-good-enough4 guess x)
    (< (abs (- (cube guess) x)) 0.00001))

  (define (my-good-enough5 guess x)
    (< (abs (- (cube guess) x)) 0.000001))

 (display "----------TESTING----------")(newline)
 (display "Testing with acurracy 0.1:       ")(cubr 27 my-good-enough1)
 (display "Testing with acurracy 0.01:      ")(cubr 27 my-good-enough2)
 (display "Testing with acurracy 0.001:     ")(cubr 27 my-good-enough3)
 (display "Testing with acurracy 0.0001:    ")(cubr 27 my-good-enough4)
 (display "Testing with acurracy 0.00001:   ")(cubr 27 my-good-enough5)






