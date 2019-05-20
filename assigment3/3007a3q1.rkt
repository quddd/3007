;;Qudus Agbalaya 101007487
;funtion : make-interval
;creates an interval with, lower is lower bound
;and upper is upper

(define (make-interval lower upper)
  (if(<= lower upper)
       (cons lower upper)
       ("Not a valid interval")))
;get start of interval
(define (start interval) (car interval))
;get end of interval
(define (end interval) (cdr interval))
;add interval
(define (add-interval x y)
  (make-interval (+ (start x) (start y)) (+ (end x) (end y))))

(define (subtract-interval x y)
  (make-interval (- (start x) (start y)) (- (end x) (end y))))

(define (multiply-interval x y)
  (make-interval (min (*(start x) (start y))(*(start x)(end y))(*(end x)(start y))(*(end x)(end y)))
                 (max (*(start x) (start y))(*(start x)(end y))(*(end x)(start y))(*(end x)(end y)))))

(define (divide-interval x y)
  (cond((<= (start y) 0) (display "invalid division"))
       ((<= (end y) 0) (display "invalid division"))
       (else
        (multiply-interval x (make-interval (/ 1 (end y)) (/ 1 (start y))))))
  )

(display "---------TESTING----------")(newline)

(display "[1,2] + [3,4]")(newline)
(display "Expected: [4,6] ")(newline)
(display "Actual: ")
(add-interval (make-interval 1 2) (make-interval 3 4))(newline)

(display "[1,2] - [3,4]")(newline)
(display "Expected: [-2,-2] ")(newline)
(display "Actual: ")
(subtract-interval (make-interval 1 2) (make-interval 3 4))(newline)

(display "[1,2] * [3,4]")(newline)
(display "Expected: [3, 8] ")(newline)
(display "Actual: ")
(multiply-interval (make-interval 1 2) (make-interval 3 4))(newline)

(display "[1,2] / [3,4]")(newline)
(display "Expected: [1/4, 2/3] ")(newline)
(display "Actual: ")
(divide-interval (make-interval 1 2) (make-interval 3 4))(newline)


