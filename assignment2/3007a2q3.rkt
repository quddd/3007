;-------QUDUS AGBALAYA (Prince)-----------
;-------3007 Assignment2------------------
;3
(define (digits n)
  (cond ((< (floor n) 10) 1)
        (else (+ 1 (digits (/ (floor n) 10))))))

;b.)
(define (digits-iter n)
  (define (digits-iterative n count)
    (cond ((= n 0) count)
          (else ( digits-iterative (floor (/ n 10)) (+ count 1)))))
  (digits-iterative n 0))
    

(display "(digits 42)")(newline)
   (display " Expected : 2")(newline)
   (display " Actual : ")(digits 42)(newline)
(display "(digits 13579")(newline)
   (display " Expected : 5")(newline)
   (display " Actual : ")(digits 13579)(newline)
(display "(digits 123456)")(newline)
   (display " Expected : 6")(newline)
   (display " Actual : ")(digits 123456)(newline)
(display "(digits-iter 42)")(newline)
   (display " Expected : 2")(newline)
   (display " Actual : ")(digits-iter 42)(newline)
(display "(digits-iter 13579")(newline)
   (display " Expected : 5")(newline)
   (display " Actual : ")(digits-iter 13579)(newline)
(display "(digits-iter 123456)")(newline)
   (display " Expected : 6")(newline)
   (display " Actual : ")(digits-iter 123456)(newline)