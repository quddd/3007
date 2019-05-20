;-------QUDUS AGBALAYA (Prince)-----------
;-------3007 Assignment2------------------

;1
(define (f n)
  (if (< n 4)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3)))
         (* 4 (f (- n 4)))
         )
      )
  )
;Subtitution model for (f n)
; (f 6)
;(+ (f 5) (* 2 (f 4)) (* 3 (f 3)) (* 4 (f 2))
;(+ (+ (f 4) (*2 (f 3)) (* 3 (f 2)) (* 4 (f 1))) (* 2 (+ (f 3) (* 2 (f 2)) (*3 (f 1)) 0)) 9 8)
;(+ (+ (+ (f 3) (* 2 (f 2)) (* 3 (f 1) 0) (*2 (f 3)) (* 3 (f 2)) (* 4 (f 1))) (* 2 (+ (f 3) (* 2 (f 2)) (*3 (f 1)) 0)) 9 8)
;;(+ (+ (+ 6 (* 2 2) (* 3 1) 0) (*2 3) (* 3 2) (* 4 1) (* 2 (+ 3 (* 2 8) (*3 1) 0)) 9 8)
;63




(define (f-iter n)
  (define (f-iteration  w x y z count)
    (if (< count 4) w (f-iteration (+ w (* 2 x) (* 3 y) (* 4 z)) w x y (- count 1))))
  (if (< n 4) n (f-iteration 3 2 1 0 n))
  )

(display "-----------TESTING---------")(newline)
(display "(f 6) =>")(newline)
   (display " Expected : 63")(newline)
   (display " Actual : ")(f 6)(newline)
(display "(f 4) =>")(newline)
   (display " Expected : 10")(newline)
   (display " Actual : ")(f 4)(newline)
(display "(f 3) => :")(newline)
   (display " Expected : 3")(newline)
   (display " Actual : ")(f 3)(newline)
(display "(f-iter 6) =>")(newline)
   (display " Expected : 63")(newline)
   (display " Actual : ")(f-iter 6)(newline)
(display "(f-iter 4) =>")(newline)
   (display " Expected : 10")(newline)
   (display " Actual : ")(f-iter 4)(newline)
(display "(f-iter 3) => :")(newline)
   (display " Expected : 3")(newline)
   (display " Actual : ")(f-iter 3)(newline)




