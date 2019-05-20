(define (special-cons x y)
		(lambda (m) (m x y)))
(define (special-car a)
  (a (lambda (x y) x)))

(define (special-cdr a)
  (a (lambda (x y) y)))

(define (triple x y z)
  (define first x)
  (define second y)
   (define third z)
    (define (dispatch method)
      (cond ((eq? method 'first) first) 
            ((eq? method 'second) second)
            ((eq? method 'third) third)))

    dispatch)

(define (first a)
  (a 'first))
(define (second a)
  (a 'second))
(define (third a)
  (a 'third))

(display "--------------TESTING------------")(newline)
(display "(special-car (special-cons 1 2))")(newline)
(display " Expected: 1")(newline)
(display " Actual: ")(special-car (special-cons 1 2))(newline)

(display "(special-cdr (special-cons 1 2))")(newline)
(display " Expected: 2")(newline)
(display " Actual: ")(special-cdr (special-cons 1 2))(newline)


(display "(define a (triple 1 2 3))")(newline)
(define a (triple 1 2 3))
(display "(first a)")(newline)
(display " Expected: 1")(newline)
(display " Actual: ")(first a)(newline)

(display "(second a)")(newline)
(display " Expected: 2")(newline)
(display " Actual: ")(second a)(newline)

(display "(third a)")(newline)
(display " Expected: 3")(newline)
(display " Actual: ")(third a)(newline)








