;;Qudus Agbalaya 101007487
(define (after list n)
  (if (= n 0) list
      (after (cdr list)(- n 1))))

(define (splice L i A)
  (if (= i 0) (append A L)
      (cons (car L) (splice (cdr L) (- i 1) A))))

(define (splice2 L i n A)
  (if (= i 0) (append A (after L n))
      (cons (car L) (splice2 (cdr L) (- i 1) n A))))

(display "---------------TESTING----------------")(newline)
(display "(after '(a b c d e f g h) 3)")(newline)
(display " Expected: (d e f g h)")(newline)
(display " Actual: ")(after '(a b c d e f g h) 3)(newline)

(display "(after '(a b c d e f g h) 0)")(newline)
(display " Expected: (a b c d e f g h")(newline)
(display " Actual: ")(after '(a b c d e f g h) 0)(newline)

(display "(splice '(1 2 3 4 5) 2 '(a b c))")(newline)
(display " Expected: (1 2 a b c 3 4 5)")(newline)
(display " Actual: ")(splice '(1 2 3 4 5) 2 '(a b c))(newline)


(display "(splice '(1 2 3 4 5) 0 '(a b c))")(newline)
(display " Expected: (a b c 1 2 3 4 5)")(newline)
(display " Actual: ")(splice '(1 2 3 4 5) 0 '(a b c))(newline)



(display "(splice2 '(1 2 3 4 5) 2 1 '(a b c))")(newline)
(display " Expected: (1 2 a b c 4 5)")(newline)
(display " Actual: ")(splice2 '(1 2 3 4 5) 2 1 '(a b c))(newline)

(display "(splice2 '(1 2 3 4 5) 2 0 '(a b c))")(newline)
(display " Expected: (1 2 a b c 3 4 5)")(newline)
(display " Actual: ")(splice2 '(1 2 3 4 5) 2 0 '(a b c))(newline)


