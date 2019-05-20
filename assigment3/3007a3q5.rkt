;;Qudus Agbalaya 101007487
(#%require (only racket/base random))

;------------------------------------------------------------------------
;code taken from the notes

(define the-empty-stream '())

(define-syntax cons-stream
  (syntax-rules ()
    ((cons-stream a b)(cons a (delay b)))))

(define (stream-car s)(car s))
(define (stream-cdr s)(force (cdr s)))

(define (stream-null? stream )
    (eq? stream the-empty-stream))


(define (stream-filter predicate stream)
    (cond ((stream-null? stream) 
              the-empty-stream)
          ((predicate (stream-car stream))
              (cons-stream (stream-car stream)
                           (stream-filter predicate (stream-cdr stream))))
          (else (stream-filter predicate (stream-cdr stream)))))

(define (divisible? a b)
    (= (modulo a b) 0))

(define (integers-starting-from n)
    (cons-stream n (integers-starting-from (+ n 1))))

(define integers (integers-starting-from 1))

;a--------------------------------------------------------------------------
(define (stream-first n str)
  (if (= n 0) '()
      (cons-stream (stream-car str) (stream-first (- n 1) (stream-cdr str)))
      )
  )

(define (list->stream lis)
  (if (null? (car lis)) '()
        (cons-stream (car lis) (list->stream (cdr lis)))
        )          
  )

(define (stream->list str)
  (if (null? str) '()
      (cons (stream-car str) (stream->list (stream-cdr str))
            )
      )
  )

;b---------------------------------------------------------------------

(define (infinite-1s) (cons-stream 1 (infinite-1s)))

(define (odd-integers) (stream-filter
  (lambda (x) (not (divisible? x 2))) integers))

(define (random-integers)
  (cons-stream (random 100) (random-integers)))

;iv-----------------------------------------------------------------------------

(define (infinte-function n)
   (if (< n 4)
      (cons-stream n (infinite-function (+ n 1)))
      (cons-stream
          (+ (stream-car (infinite-function (- n 1)))
             (* (stream-car (infinite-function (- n 2))) 2)
             (* (stream-car (infinite-function (- n 3))) 3) )
          (infinite-func (+ n 1))
          )
      )
  )
  
;-----------------------------------
(define (partial-sums pos-ints)
  (define (re instr p)
    (cons-stream (+ p (stream-car instr)) (re (stream-cdr instr) (+ p (stream-car instr)))))
  (re pos-ints 0))

(display "----------TEST CASES-----------")(newline)
(display "(stream-first 10 (infinite-1s))))")(newline)
(stream-first 10 (infinite-1s))(newline)

(display "(stream->list (stream-first 10 (infinite-1s))))")(newline)
(stream->list (stream-first 10 (infinite-1s)))(newline)

(display "(list->stream (stream->list (stream-first 10 (infinite-1s)))))")(newline)
(list->stream(stream->list (stream-first 10 (infinite-1s))))(newline)

(display "(stream->list(stream-first 10 (odd-integers)))")(newline)
(stream->list (stream-first 10 (odd-integers)))(newline)

(display "(list->stream(stream->list(stream-first 10 (odd-integers)))")(newline)
(list->stream (stream->list (stream-first 10 (odd-integers))))(newline)

(display "(stream->list(stream-first 10 (random-integers)))")(newline)
(stream->list (stream-first 10 (random-integers)))(newline)

(display "(list->stream (stream->list (stream-first 10 (random-integers)))")(newline)
(list->stream (stream->list (stream-first 10 (random-integers))))(newline)






  