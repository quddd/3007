;;Qudus Agbalaya 101007487

(define (depth lis)
  (define (depthh lis2 currd maxd)
    (if (null? lis2)(+ maxd 1)
        (if (list? lis2)
            (cond ((list? (car lis2)) (depthh (car lis2)(+ currd 1) maxd))
                (else
                (depthh (cdr lis2) currd (max currd maxd))
                ))
            0)
        )
    )
  (depthh lis 0 0))
(define (sqr x)(* x x))
(define (treemap sqr L)
  (if (null? L) '()
      (cond ((list? L) (cons (treemap sqr (car L)(treemap)) (treemap sqr (cdrL))
                             ))
            (else (sqr L)))
      ))

(define (flattenList L)
  (if (null? L) '()
      (cond ((list? L) (append (flattenList (car L)) (flattenList (cdr L))))
            (else (list L)))
      ))


(display "-------TESTING--------")(newline)
(display "(depth '(a (b) c))")(newline)
(display " Expected: 2")(newline)
(display " Actual: ")(depth '(a (b) c))(newline)

(display "(depth 'a)")(newline)
(display " Expected: 0")(newline)
(display " Actual: ")(depth 'a)(newline)


(display "(flattenList '(1 (2 3) ((4 5 6 (7)))(((8 (9))))))")(newline)
(display " Expected: (1 2 3 4 5 6 7 8 9)")(newline)
(display " Actual: ")(flattenList '(1 (2 3) ((4 5 6 (7)))(((8 (9))))))(newline)


